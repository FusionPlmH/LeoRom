.class public Lcom/samsung/android/settings/general/ResetSettingsConfirm;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ResetSettingsConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;,
        Lcom/samsung/android/settings/general/ResetSettingsConfirm$CallbackHandler;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private databaseReset:Z

.field private handler:Landroid/os/Handler;

.field private isaccreset:Z

.field mConnection:Landroid/content/ServiceConnection;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResetSoftButton:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private final mResetSoftListener:Landroid/view/View$OnClickListener;

.field private mService:Landroid/os/Messenger;

.field progressDialog:Landroid/app/ProgressDialog;

.field private resetReceiver:Landroid/content/BroadcastReceiver;

.field private resetSettingsCompleted:Z

.field resetTask:Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mResetSoftButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->databaseReset:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->resetSettingsCompleted:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->isaccreset:Z

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    new-instance v0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;-><init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;-><init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mResetSoftListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$4;-><init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private StartPassword()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f1210a9

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12054b

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->databaseReset:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/settings/general/ResetSettingsConfirm;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->databaseReset:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->isaccreset:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->requestSoftReset()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/settings/general/ResetSettingsConfirm;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->resetCompleted()V

    return-void
.end method

.method private doSoftReset()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->isaccreset:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->resetAccessibilitySettingsOnly(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SETTINGS_SOFT_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.settings.permission.SOFT_RESET"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.android.settings.permission.SOFT_RESET"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1217e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :goto_0
    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0677

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mResetSoftListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private requestSoftReset()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->StartPassword()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->doSoftReset()V

    :goto_0
    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->doSoftReset()V

    :goto_1
    return-void
.end method

.method private resetCompleted()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1235

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_accsettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->isaccreset:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->isaccreset:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const v3, 0x7f1215f7

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.intent.action.SETTINGS_SOFT_RESET_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;-><init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V

    iput-object v2, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->resetReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->resetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v2, "VZW"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_SupportHuxDeviceQualityStatistics"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.statistics.VZW_QUALITY_STATISTICS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "event_type"

    const-string v4, "Q025"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x37

    const/4 v1, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p2, v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->doSoftReset()V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->doSoftReset()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_accsettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->isaccreset:Z

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->isaccreset:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0d024d

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContentView:Landroid/view/View;

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0250

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContentView:Landroid/view/View;

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->establishFinalConfirmationState()V

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->resetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    :cond_2
    return-void
.end method

.method protected queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.security.Password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ".title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ".subject"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ".password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p4}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public registerAccCallbackToService()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/samsung/android/settings/general/ResetSettingsConfirm$CallbackHandler;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$CallbackHandler;-><init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public resetAccHelper()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public resetAccessibilitySettingsOnly(Landroid/content/Context;)V
    .locals 3

    const-string v0, "ResetSettings"

    const-string v1, "bind resetAccessibilitySettingsOnly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->registerAccCallbackToService()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->resetAccHelper()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.accessibility"

    const-string v2, "com.samsung.accessibility.datamanager.DataManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :goto_0
    return-void
.end method

.method public unregisterAccCallbackFromService()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
