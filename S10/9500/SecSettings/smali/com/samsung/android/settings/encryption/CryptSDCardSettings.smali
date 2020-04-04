.class public Lcom/samsung/android/settings/encryption/CryptSDCardSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CryptSDCardSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/settings/search/SecIndexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private fromWhere:Ljava/lang/String;

.field private mAdminPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

.field private mContentView:Landroid/view/View;

.field private mDescriptionLayout:Landroid/widget/LinearLayout;

.field private mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

.field private mDoEncrypt:Z

.field private mEncryptedState:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsDisabledByAdmin:Z

.field private mIsDisabledByOtherDevice:Z

.field private mLeftButton:Landroid/widget/Button;

.field private mParent:Landroid/app/Activity;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressLayout:Landroid/widget/LinearLayout;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressStoarge:Landroid/widget/TextView;

.field private mProgressValue:I

.field private mRightButton:Landroid/widget/Button;

.field private mSse:Lcom/samsung/android/security/SemSdCardEncryption;

.field private mStartedByAdmin:Z

.field private mStartedByIntent:Z

.field private mStorageValue:I

.field private mSync:Ljava/lang/Object;

.field private mTextDesc:Landroid/widget/TextView;

.field private mTextEncMessages:Landroid/widget/TextView;

.field private mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

.field private serviceBusy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/LinearLayout;

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->fromWhere:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    new-instance v1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v1}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    new-instance v1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v1}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressPercent:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    iput v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    iput v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSync:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;-><init>(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->checkProgress()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->fromWhere:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->updateProgress()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->finishProgress()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Lcom/samsung/android/security/SemSdCardEncryption;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByOtherDevice:Z

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    return p1
.end method

.method private checkProgress()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getLastError()I

    move-result v0

    const-string v1, "CryptKeeperSDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkProgress LastError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Encrypted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private disableButtonUI()V
    .locals 2

    const-string v0, "CryptKeeperSDSettings"

    const-string v1, "disableButtonUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private doEncryptSDCard()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getMetricsCategory()I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x1196

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    iget-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;->encryptStorage(Z)I

    move-result v0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_1

    const-string v1, "CryptKeeperSDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error SD card not mounted while encrypting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    :cond_1
    return-void
.end method

.method private enableAllUI()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private finishProgress()V
    .locals 7

    const-string v0, "CryptKeeperSDSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishProgress + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    iget-boolean v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    const v3, 0x7f1212e8

    const v4, 0x7f1212f2

    const v5, 0x7f1212f7

    const v6, 0x7f121300

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->setTitle(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setTitle(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setTitle(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->setTitle(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressPercent:Landroid/widget/TextView;

    const-string v3, "100%"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "MB/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    return-void
.end method

.method private initProgress()V
    .locals 2

    const-string v0, "CryptKeeperSDSettings"

    const-string v1, "initProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0a06bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0a06c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressPercent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0a06c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0609

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    iget-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v1, 0x7f121300

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v1, 0x7f1212f2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    const v1, 0x7f1212f6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private initVariables()V
    .locals 2

    const-string v0, "CryptKeeperSDSettings"

    const-string v1, "initialize Variables"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mEncryptedState:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByOtherDevice:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStartedByAdmin:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStartedByIntent:Z

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->init()V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->init()V

    return-void
.end method

.method private isAdminApplied()Z
    .locals 5

    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "CryptKeeperSDSettings"

    const-string v4, "isAdminApplied : true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    iput v3, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private isEncryptionApplied()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->isSdCardEncryped()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isServiceBusy()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private restorePrefs()V
    .locals 6

    const-string v0, "CryptKeeperSDSettings"

    const-string v1, "restorePrefs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "OtherDevice"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "exception"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "CryptKeeperSDSettings"

    const-string v5, "restorePrefs ==> Error Case UI"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByOtherDevice:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getMetricsCategory()I

    move-result v4

    const/16 v5, 0x25f1

    invoke-static {v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_0
    const-string v4, "adminStart"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStartedByIntent:Z

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStartedByAdmin:Z

    :cond_1
    goto :goto_0

    :cond_2
    const-string v3, "CryptKeeperSDSettings"

    const-string v4, "CryptSDCardSettings started by user"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_3
    const-string v2, "CryptKeeperSDSettings"

    const-string v3, "CryptSDCardSettings started by user"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->getSdCardEncryptionPreferences()Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    if-nez v2, :cond_4

    new-instance v2, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v2}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "CryptKeeperSDSettings"

    const-string v4, "mAdminPolicies is ture"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    iput v1, v3, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-virtual {v3}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    iput-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    const-string v1, "CryptKeeperSDSettings"

    const-string v3, "Disabled by Admin"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-nez v1, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->enableAllUI()V

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->updatePrefUI()V

    :cond_7
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->doEncryptSDCard()V

    return v3

    :cond_0
    const v2, 0x7f12058c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v2

    return v2
.end method

.method private updatePrefUI()V
    .locals 14

    const-string v0, "CryptKeeperSDSettings"

    const-string/jumbo v1, "updatePrefUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, "CryptKeeperSDSettings"

    const-string v1, "parent activity is null, cannot display UI, removing fragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->isSdCardEncryped()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mEncryptedState:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mEncryptedState:Z

    const v3, 0x7f1212f5

    const v4, 0x7f1212e7

    const/4 v5, 0x1

    const v6, 0x7f1212f2

    const v7, 0x7f121300

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f1212eb

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f1212ea

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f1212e9

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v10, v6}, Landroid/app/Activity;->setTitle(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setText(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v10

    if-ne v10, v5, :cond_1

    iget-object v10, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v10, v8}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f1212f8

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f1212f9

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v10, v7}, Landroid/app/Activity;->setTitle(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v10, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v10, v8}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result v2

    iget-object v10, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v10}, Lcom/samsung/android/security/SemSdCardEncryption;->getLastError()I

    move-result v10

    if-eqz v2, :cond_4

    const-string v11, "CryptKeeperSDSettings"

    const-string v12, "Service is busy: Disabling UI"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->disableButtonUI()V

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    goto :goto_1

    :cond_4
    iget-object v11, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v12, 0x7f0a0609

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ProgressBar;

    invoke-virtual {v11}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v11

    const/16 v12, 0x64

    if-ne v11, v12, :cond_5

    const-string v3, "CryptKeeperSDSettings"

    const-string v4, "already finish enc/dec"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_5
    :goto_1
    iget-object v11, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v11}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v5, 0x7f121304

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v4, v7}, Landroid/app/Activity;->setTitle(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_6
    const-string v3, "removed"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "HiddenMount"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v12, 0x7f1212f4

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    const v12, 0x7f1212f1

    invoke-virtual {v3, v12}, Landroid/widget/Button;->setText(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    const v12, 0x7f1212ff

    invoke-virtual {v3, v12}, Landroid/widget/Button;->setText(I)V

    const-string v3, "CryptKeeperSDSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updatePrefUI : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v3, v7}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v3, v6}, Landroid/app/Activity;->setTitle(I)V

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_8
    iget-boolean v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByOtherDevice:Z

    if-nez v3, :cond_a

    if-ne v10, v8, :cond_9

    goto :goto_3

    :cond_9
    iget-boolean v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v3, v7}, Landroid/app/Activity;->setTitle(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v4, 0x7f121305

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    :cond_a
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v3, v6}, Landroid/app/Activity;->setTitle(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v5, 0x7f1212ef

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_b
    :goto_4
    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_5

    :cond_c
    iget-object v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->requestFocus()Z

    :goto_5
    return-void
.end method

.method private updateProgress()V
    .locals 5

    const-string v0, "CryptKeeperSDSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateProgress + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto/16 :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v1, 0x7f121300

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    const v1, 0x7f1212fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v1, 0x7f1212f2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    const v1, 0x7f1212f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    iget v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressPercent:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "MB/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1194

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x37

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->doEncryptSDCard()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->restorePrefs()V

    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string v0, "CryptKeeperSDSettings"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryption;

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;-><init>(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;->registerListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V

    const-string v0, "CryptKeeperSDSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    :cond_1
    :goto_0
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->runKeyguardConfirmation(I)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const v0, 0x7f0d0157

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const-string v0, "CryptKeeperSDSettings"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "fromWhere"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->fromWhere:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v3, 0x7f0a0225

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v3, 0x7f0a045b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v3, 0x7f0a0684

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v3, 0x7f0a022c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v3, 0x7f0a0610

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0601b1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->initVariables()V

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    return-object v2
.end method

.method public onDetach()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    if-eqz v0, :cond_0

    const-string v0, "CryptKeeperSDSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;->unregisterListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "CryptKeeperSDSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isAdminApplied()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CryptKeeperSDSettings"

    const-string v3, "SD card is unmounted, mount SD card"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1, v2}, Lcom/samsung/android/security/SemSdCardEncryption;->SetMountSDcardToHelper(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->mountVolume()Z

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getPolicyChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/security/SemSdCardEncryption;->setPolicyChanged(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->restorePrefs()V

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isServiceBusy()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    :cond_2
    return-void
.end method

.method public showAlert(I)Landroid/app/Dialog;
    .locals 12

    const-string v0, "CryptKeeperSDSettings"

    iget-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encrypt Fail Case :"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decrypt Fail Case : "

    goto :goto_0

    :goto_1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1212ec

    const v1, 0x7f1212fa

    const-wide/16 v2, 0xa

    const/16 v4, 0x25f2

    const/16 v5, 0x25f3

    const v6, 0x104000a

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    const v0, 0x7f1212ec

    const v1, 0x7f1212ed

    const-string v4, "CryptKeeperSDSettings"

    const-string v8, "AlertDialog warning - decrypt error"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getMetricsCategory()I

    move-result v4

    invoke-static {v4, v5, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :pswitch_1
    const v0, 0x7f1212fa

    const v1, 0x7f1212fb

    const-string v5, "CryptKeeperSDSettings"

    const-string v8, "AlertDialog warning - encrypt error"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getMetricsCategory()I

    move-result v5

    invoke-static {v5, v4, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :pswitch_2
    iget-boolean v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v2, :cond_1

    move v0, v1

    nop

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v1, :cond_2

    const v1, 0x7f1212fc

    goto :goto_2

    :cond_2
    const v1, 0x7f1212ee

    :goto_2
    const-string v2, "CryptKeeperSDSettings"

    const-string v3, "AlertDialog warning - mount fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getMetricsCategory()I

    move-result v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    const-wide/16 v8, 0x3

    invoke-static {v2, v4, v8, v9}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :pswitch_3
    const v0, 0x7f1212fa

    const v1, 0x7f1212fb

    const-string v2, "CryptKeeperSDSettings"

    const-string v3, "AlertDialog - File opening fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getMetricsCategory()I

    move-result v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move v4, v5

    :goto_4
    const-wide/16 v8, 0x2

    invoke-static {v2, v4, v8, v9}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->getAdditionalSpaceRequired()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v2, v8

    if-gez v8, :cond_5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :cond_5
    iget-boolean v8, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v8, :cond_6

    move v0, v1

    nop

    :cond_6
    const v1, 0x7f1212fd

    const-string v8, "CryptKeeperSDSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AlertDialog storage warning - need over the "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, "MB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getMetricsCategory()I

    move-result v8

    iget-boolean v9, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v9, :cond_7

    goto :goto_5

    :cond_7
    move v4, v5

    :goto_5
    const-wide/16 v9, 0x1

    invoke-static {v8, v4, v9, v10}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "%.2f"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const-string v8, "MB"

    aput-object v8, v5, v9

    invoke-virtual {p0, v1, v5}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
