.class public Lcom/android/settings/UCSCryptKeeperTask;
.super Landroid/os/AsyncTask;
.source "UCSCryptKeeperTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;,
        Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;,
        Lcom/android/settings/UCSCryptKeeperTask$StateMachine;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static mCSName:Ljava/lang/String;

.field private static mFirstTime:Z

.field private static mPasswordMaxLength:I

.field private static mPasswordMinLength:I

.field private static mPukMaxLength:I

.field private static mPukMinLength:I

.field private static mSavedPassword:Ljava/lang/String;

.field private static sIsRunning:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCryptKeeperDescription:Landroid/widget/TextView;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEmergencyCall:Landroid/widget/Button;

.field private mEnabledWrap:I

.field private mFieldLayout:Landroid/widget/FrameLayout;

.field private mHandler:Landroid/os/Handler;

.field private mIsEncrypt:Z

.field private mIsPukState:Z

.field mKeyguardProp:Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;

.field mOdeProp:Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

.field private mOdeUCMEnabled:Z

.field private mParentActivity:Lcom/android/settings/CryptKeeper;

.field private mPasswordEntry:Landroid/widget/EditText;

.field protected mPinText:Ljava/lang/String;

.field protected mPukText:Ljava/lang/String;

.field protected mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusString:I

.field private mStatusTextView:Landroid/widget/TextView;

.field private mUri:Ljava/lang/String;

.field owner_info:Ljava/lang/String;

.field passwordType:I

.field ucsEditListener:Landroid/widget/TextView$OnEditorActionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, ""

    sput-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/UCSCryptKeeperTask;->mFirstTime:Z

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    const-string v1, ""

    sput-object v1, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    sput-boolean v0, Lcom/android/settings/UCSCryptKeeperTask;->sIsRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/CryptKeeper;Landroid/os/Handler;ZIZ)V
    .locals 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->passwordType:I

    new-instance v1, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    invoke-direct {v1, p0}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    iput-boolean v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    iput-boolean v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEnabledWrap:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    const v2, 0x7f121ad3

    iput v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusString:I

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mFieldLayout:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEmergencyCall:Landroid/widget/Button;

    iput-boolean v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeUCMEnabled:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mUri:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;

    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask$3;

    invoke-direct {v0, p0}, Lcom/android/settings/UCSCryptKeeperTask$3;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->ucsEditListener:Landroid/widget/TextView$OnEditorActionListener;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/UCSCryptKeeperTask;->sIsRunning:Z

    iput-object p1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string v1, "device_policy"

    invoke-virtual {p2, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iput-object p3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mHandler:Landroid/os/Handler;

    const v1, 0x7f0a02ab

    invoke-virtual {p2, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEmergencyCall:Landroid/widget/Button;

    const-string v1, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mUri:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    iput p5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEnabledWrap:I

    invoke-static {}, Lcom/samsung/android/settings/ucm/EFSProperties;->loadODEConfig()Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

    invoke-static {}, Lcom/samsung/android/settings/ucm/EFSProperties;->loadKeyguardConfig()Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;

    iput-boolean p6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeUCMEnabled:Z

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

    iget v1, v1, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->enabledUCSInODE:I

    if-ne v1, v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

    iget-object v1, v1, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->csName:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

    iget v0, v0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->pinMaxLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

    iget v0, v0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->pinMinLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

    iget v0, v0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->pukMaxLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

    iget v0, v0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->pukMinLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    const-string v0, "UCSCryptKeeperTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ODE Properties : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;

    iget-object v1, v1, Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;->csName:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;

    iget v0, v0, Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;->pinMaxLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;

    iget v0, v0, Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;->pinMinLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;

    iget v0, v0, Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;->pukMaxLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;

    iget v0, v0, Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;->pukMinLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    const-string v0, "UCSCryptKeeperTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keyguard Properties : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "UCSCryptKeeperTask"

    const-string v1, "Failed to get both properties"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusBar:Landroid/app/StatusBarManager;

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

    iget-object v0, v0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->defaultLanguage:[B

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Ljava/util/Locale;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

    iget-object v2, v2, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->defaultLanguage:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/app/SemLocalePicker;->updateLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "UCSCryptKeeperTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ODE Properties for defaultLanguage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/UCSCryptKeeperTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/UCSCryptKeeperTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->fakeUnlockAttempt()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/UCSCryptKeeperTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->beginAttempt()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/os/storage/IStorageManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/UCSCryptKeeperTask;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/UCSCryptKeeperTask;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask;->handleBadAttemptUCS([I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEmergencyCall:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/UCSCryptKeeperTask;)Lcom/android/settings/CryptKeeper;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/UCSCryptKeeperTask;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEnabledWrap:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings/UCSCryptKeeperTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/UCSCryptKeeperTask;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/UCSCryptKeeperTask;->setMessageInUcsInfo(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/UCSCryptKeeperTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->unlockUCSPUK()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/UCSCryptKeeperTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    return v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800()I
    .locals 1

    sget v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    sget v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    return v0
.end method

.method private beginAttempt()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v1, 0x7f0a07d2

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1204bb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private dipToPixel(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private fakeUnlockAttempt()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f121acc

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/UCSCryptKeeperTask$4;

    invoke-direct {v1, p0}, Lcom/android/settings/UCSCryptKeeperTask$4;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstanceAndSyncExecute(Landroid/content/Context;Lcom/android/settings/CryptKeeper;Landroid/os/Handler;ZIZ)Z
    .locals 10

    const-class v0, Lcom/android/settings/UCSCryptKeeperTask;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/settings/UCSCryptKeeperTask;->sIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "UCSCryptKeeperTask"

    const-string v2, "getInstanceAndSyncExecute. task is already running. wait for 1 sec"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/settings/UCSCryptKeeperTask;->sIsRunning:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "UCSCryptKeeperTask"

    const-string v3, "getInstanceAndSyncExecute. task is still running. failed to start new task"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v2

    :cond_1
    :try_start_3
    new-instance v1, Lcom/android/settings/UCSCryptKeeperTask;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/settings/UCSCryptKeeperTask;-><init>(Landroid/content/Context;Lcom/android/settings/CryptKeeper;Landroid/os/Handler;ZIZ)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/UCSCryptKeeperTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getStorageManager()Landroid/os/storage/IStorageManager;
    .locals 2

    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private handleBadAttemptUCS([I)V
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->reset([I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getWrongPasswordStringId()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    const v3, 0x7f121ac9

    const v4, 0x7f121aca

    const v5, 0xfffe

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    aget v0, p1, v6

    if-ne v0, v5, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    new-array v2, v1, [I

    invoke-virtual {v0, v2}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->reset([I)V

    invoke-virtual {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getWrongPukStringId()I

    move-result v0

    aget v2, p1, v7

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_4
    sget-object v0, Lcom/samsung/android/settings/ucm/UCMUtils;->miscInfo:Ljava/lang/String;

    aget v1, p1, v6

    invoke-direct {p0, v0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setMessageInUcsInfo(Ljava/lang/String;I)V

    const-string v0, "NONE"

    sput-object v0, Lcom/samsung/android/settings/ucm/UCMUtils;->miscInfo:Ljava/lang/String;

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string v8, "input_method"

    invoke-virtual {v2, v8}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2, v8, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_6
    aget v2, p1, v1

    const v8, 0xffef

    if-ne v2, v8, :cond_7

    iput-boolean v7, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    new-array v2, v7, [I

    aget v3, p1, v7

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->reset([I)V

    goto :goto_2

    :cond_7
    aget v2, p1, v6

    if-ne v2, v5, :cond_9

    iget-boolean v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, v4}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    goto :goto_2

    :cond_9
    aget v1, p1, v1

    if-ne v1, v0, :cond_a

    aget v1, p1, v7

    if-ne v1, v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    aget v1, p1, v6

    invoke-static {v0, v1}, Lcom/samsung/android/settings/ucm/UCMUtils;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getWrongPasswordStringId()I

    move-result v0

    aget v1, p1, v7

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    :goto_2
    sget-object v0, Lcom/samsung/android/settings/ucm/UCMUtils;->miscInfo:Ljava/lang/String;

    aget v1, p1, v6

    invoke-direct {p0, v0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setMessageInUcsInfo(Ljava/lang/String;I)V

    const-string v0, "NONE"

    sput-object v0, Lcom/samsung/android/settings/ucm/UCMUtils;->miscInfo:Ljava/lang/String;

    :goto_3
    return-void
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setBackFunctionality(Z)V

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "UCSCryptKeeperTask"

    const-string v3, "Activity Not Found!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private passwordEntryInitForUCS()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v1, 0x7f0a05ba

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mFieldLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->ucsEditListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    sget v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/high16 v3, 0x60000

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v0

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    :cond_0
    sget v0, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    sget v3, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    new-array v3, v1, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    sget v5, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    new-array v3, v1, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    sget v5, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask$1;

    invoke-direct {v0, p0}, Lcom/android/settings/UCSCryptKeeperTask$1;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mFieldLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mFieldLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2

    const/16 v3, 0xb4

    invoke-direct {p0, v3}, Lcom/android/settings/UCSCryptKeeperTask;->dipToPixel(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-direct {p0, v3}, Lcom/android/settings/UCSCryptKeeperTask;->dipToPixel(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mFieldLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v2, 0x7f0a02ab

    invoke-virtual {v0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "UCSCryptKeeperTask"

    const-string v3, "Removing the emergency Call button"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v2, 0x7f0a082d

    invoke-virtual {v0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    iget-object v3, v3, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_5

    const-string v3, "UCSCryptKeeperTask"

    const-string v4, "Acquiring wakelock."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const/16 v5, 0x1a

    const-string v6, "UCSCryptKeeperTask"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v4, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    iget-object v4, v4, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_5
    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/settings/UCSCryptKeeperTask$2;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/UCSCryptKeeperTask$2;-><init>(Lcom/android/settings/UCSCryptKeeperTask;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v3, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    sget-object v4, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_6
    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->updateEmergencyCallButtonState()V

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v1}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v3, 0x480000

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private final setBackFunctionality(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3770000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    return-void
.end method

.method private setMessageInUcsInfo(Ljava/lang/String;I)V
    .locals 6

    const-string v0, ""

    sget-object v1, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "NONE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz p2, :cond_2

    const/16 v1, 0x20

    if-eq p2, v1, :cond_2

    :cond_2
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v2, 0x7f0a090b

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    const v3, 0x800003

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private takeEmergencyCallAction()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->launchEmergencyDialer()V

    :goto_0
    return-void
.end method

.method private unlockUCSPUK()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;-><init>(Lcom/android/settings/UCSCryptKeeperTask;Lcom/android/settings/UCSCryptKeeperTask$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const-string v2, ""

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;-><init>(Lcom/android/settings/UCSCryptKeeperTask;Lcom/android/settings/UCSCryptKeeperTask$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const-string v2, ""

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method private updateEmergencyCallButtonState()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v1, 0x7f0a02ab

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, ""

    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "UCSCryptKeeperTask"

    const-string v5, "Failed to get mdm type"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->isEmergencyCallCapable()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Softphone"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v3, Lcom/android/settings/UCSCryptKeeperTask$5;

    invoke-direct {v3, p0}, Lcom/android/settings/UCSCryptKeeperTask$5;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f1205b9

    goto :goto_1

    :cond_1
    const v3, 0x7f1205b8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    return-void

    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method protected checkPin()Z
    .locals 2

    sget-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    if-lt v0, v1, :cond_0

    sget v1, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    if-gt v0, v1, :cond_0

    sget-object v1, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected checkPuk()Z
    .locals 1

    sget-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPukText:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public confirmPin()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    sget-object v1, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    move-result v1

    iput v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->passwordType:I

    const-string v1, "OwnerInfo"

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->owner_info:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UCSCryptKeeperTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling mount service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;
    .locals 7

    move v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    const v5, 0x7f120c38

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    goto :goto_2

    :cond_0
    if-eq v0, v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    const v5, 0x7f120c37

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_2
    nop

    return-object v1
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    const v0, 0x7f1205bd

    return v0
.end method

.method public getWrongPukStringId()I
    .locals 1

    const v0, 0x7f121ad0

    return v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v1, 0x7f0d0054

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    const-string v0, ""

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mUri:Ljava/lang/String;

    const v1, 0x7f121ad3

    iput v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusString:I

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v2, 0x7f0a05ba

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f0a07d2

    invoke-virtual {v1, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusString:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x0

    sget-boolean v3, Lcom/android/settings/UCSCryptKeeperTask;->mFirstTime:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_4

    move-object v3, v1

    move v1, v2

    :goto_0
    const/16 v5, 0x1e

    if-ge v1, v5, :cond_3

    invoke-static {v0}, Lcom/samsung/android/settings/ucm/UCMUtils;->getStatus(Ljava/lang/String;)[I

    move-result-object v3

    const-string v5, "UCSCryptKeeperTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "status : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v3, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v5, v3, v2

    if-eq v5, v4, :cond_1

    goto :goto_2

    :cond_1
    const/16 v5, 0x1d

    if-eq v1, v5, :cond_2

    const-wide/16 v5, 0x3e8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    sput-boolean v2, Lcom/android/settings/UCSCryptKeeperTask;->mFirstTime:Z

    goto :goto_3

    :cond_4
    invoke-static {v0}, Lcom/samsung/android/settings/ucm/UCMUtils;->getStatus(Ljava/lang/String;)[I

    move-result-object v3

    :goto_3
    aget v1, v3, v2

    const/16 v5, 0x85

    const/4 v6, 0x1

    if-ne v1, v5, :cond_5

    iput-boolean v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    :cond_5
    sget-object v1, Lcom/samsung/android/settings/ucm/UCMUtils;->miscInfo:Ljava/lang/String;

    const/4 v5, 0x2

    aget v5, v3, v5

    invoke-direct {p0, v1, v5}, Lcom/android/settings/UCSCryptKeeperTask;->setMessageInUcsInfo(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f0a05ac

    invoke-virtual {v1, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->owner_info:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSelected(Z)V

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    aget v5, v3, v6

    if-ne v5, v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    const v5, 0x7f1207f6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->passwordEntryInitForUCS()V

    iget-boolean v4, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    if-ne v4, v6, :cond_7

    iget-object v4, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    new-array v5, v6, [I

    aget v6, v3, v6

    aput v6, v5, v2

    invoke-virtual {v4, v5}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->reset([I)V

    goto :goto_4

    :cond_7
    iget-boolean v4, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    const v5, 0x7f121acd

    aget v6, v3, v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_8
    iget-object v4, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    const v5, 0x7f120825

    aget v6, v3, v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    sput-boolean v2, Lcom/android/settings/UCSCryptKeeperTask;->sIsRunning:Z

    return-void
.end method

.method protected resetPasswordText(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected setHintOrMessageText(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const v3, 0x7f121ad2

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v3}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    sget v4, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    sget v1, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-virtual {v3, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const v3, 0x7f121acc

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v3}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    sget v4, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    sget v1, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-virtual {v3, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected setHintOrMessageText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
