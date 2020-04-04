.class public Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "SecEdgeColorBalanceProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$UIThreadEdgeColorBalance;
    }
.end annotation


# static fields
.field private static COMMAND_FILE:Ljava/io/File;

.field private static final RECOVERY_DIR:Ljava/io/File;


# instance fields
.field private bIsCallFirst:Z

.field private bIsForceWatingForShortModel:Z

.field currentPos:I

.field private isEdgeColorBalanceRunning:Z

.field private mBackgroundThread:Ljava/lang/Runnable;

.field private mCancelDialog:Landroid/app/AlertDialog;

.field private mECBTask:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$UIThreadEdgeColorBalance;

.field public mEstimatedTime:J

.field public mIsProgressStop:Z

.field private mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private mPercentageTextView:Landroid/widget/TextView;

.field mPgBarHandler:Landroid/os/Handler;

.field private final mPocObserver:Landroid/database/ContentObserver;

.field mProgressBar:Landroid/widget/ProgressBar;

.field private volatile mProgressBarThread:Ljava/lang/Thread;

.field private mProgressStatus:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWasStoppedDialog:Landroid/app/AlertDialog;

.field private mWriteValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->RECOVERY_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->COMMAND_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->currentPos:I

    iput v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mProgressStatus:I

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mCancelDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mWasStoppedDialog:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->isEdgeColorBalanceRunning:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->bIsForceWatingForShortModel:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->bIsCallFirst:Z

    iput v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mWriteValue:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mEstimatedTime:J

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mIsProgressStop:Z

    new-instance v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$1;-><init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mPocObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$2;-><init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mBackgroundThread:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;-><init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mPgBarHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mProgressStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mProgressStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->bIsForceWatingForShortModel:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->stopEdgeColorBalance()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->insertProgressReadErrorLog()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->isEdgeColorBalanceRunning:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)Lcom/samsung/android/hardware/display/SemMdnieManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mPercentageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->writeCommandForRecovery()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mWriteValue:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->writeEfsApplyVersion(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->removeEfsEdgeColorBalanceErrorOccurredOnBoot()V

    return-void
.end method

.method private blockHWkey()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    const/16 v1, 0x43a

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    const/16 v1, 0xa4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    const/16 v1, 0x18

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    const/16 v1, 0x19

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    const/16 v1, 0x1a

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    const/16 v1, 0x24

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    const/16 v1, 0x25

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    const/16 v1, 0xbb

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    const/16 v1, 0x3e9

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-void
.end method

.method private initUI()V
    .locals 6

    const v0, 0x7f0a0296

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mEstimatedTime:J

    const-wide/32 v4, 0x668a0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->bIsForceWatingForShortModel:Z

    goto :goto_0

    :cond_0
    iput-boolean v4, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->bIsForceWatingForShortModel:Z

    :goto_0
    const v2, 0x7f121434

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getEdgeColorBalanceUserIndexTemp(Landroid/content/Context;)I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getEdgeColorBalanceImageFromArray(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    return-void
.end method

.method private insertProgressReadErrorLog()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x1d23

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getMetricsCategory()I

    move-result v1

    const-wide/16 v2, 0x2

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method

.method private removeEfsEdgeColorBalanceErrorOccurredOnBoot()V
    .locals 4

    const-string v0, "/efs/etc/poc/failcount"

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    const-string v2, "SecEdgeColorBalanceProgressActivity"

    const-string v3, "[stpoc] removeEfsEdgeColorBalanceErrorOccurredOnBoot"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private showEdgeColorBalanceCancelDialog()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mCancelDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mCancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mCancelDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$5;-><init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V

    new-instance v1, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$6;-><init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V

    new-instance v2, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$7;-><init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f12143f

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f120515

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f12050e

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mCancelDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mCancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showEdgeColorBalanceWasStoppedDialog()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mWasStoppedDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mWasStoppedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mWasStoppedDialog:Landroid/app/AlertDialog;

    const/16 v0, 0x1d23

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getMetricsCategory()I

    move-result v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    new-instance v1, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$8;-><init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V

    new-instance v2, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$9;-><init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f12143e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f12143d

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f120516

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mWasStoppedDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mWasStoppedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startPoc()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getUserEdgeColorBalanceValue(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mWriteValue:I

    const-string v0, "SecEdgeColorBalanceProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stpoc] startPoc, previous state : Running - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->isEdgeColorBalanceRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SecEdgeColorBalanceProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stpoc] startPoc, reqeust userPoc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mWriteValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->isEdgeColorBalanceRunning:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->bIsCallFirst:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNeedSkipEdgeColorBalance(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$UIThreadEdgeColorBalance;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$UIThreadEdgeColorBalance;-><init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mECBTask:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$UIThreadEdgeColorBalance;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mECBTask:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$UIThreadEdgeColorBalance;

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mWriteValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$UIThreadEdgeColorBalance;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->isEdgeColorBalanceRunning:Z

    const-string v0, "SecEdgeColorBalanceProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stpoc] startPoc, isEdgeColorBalanceRunning : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->isEdgeColorBalanceRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private stopEdgeColorBalance()V
    .locals 3

    const-string v0, "SecEdgeColorBalanceProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stpoc] stopEdgeColorBalance, previous state : Running - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->isEdgeColorBalanceRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->isEdgeColorBalanceRunning:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNeedSkipEdgeColorBalance(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->stopReadEdgeColorBalance(Lcom/samsung/android/hardware/display/SemMdnieManager;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->isEdgeColorBalanceRunning:Z

    return-void
.end method

.method private writeCommandForRecovery()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v1, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->COMMAND_FILE:Ljava/io/File;

    const-string v2, "rwd"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "--copy_poc_file"

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    const-string v2, "SecEdgeColorBalanceProgressActivity"

    const-string v3, "[stpoc] !@RecoverySystem before fsync syscall!!"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    const-string v2, "SecEdgeColorBalanceProgressActivity"

    const-string v3, "[stpoc] !@RecoverySystem after fsync syscall!!"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    nop

    sget-object v2, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SecEdgeColorBalanceProgressActivity"

    const-string v3, "[stpoc] COMMAND_FILE is already exist!!"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    throw v2
.end method

.method private writeEfsApplyVersion(II)V
    .locals 5

    const-string v0, "/efs/FactoryApp/apply_version"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v2, v4

    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    throw v3
.end method


# virtual methods
.method public disableStatusBar()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_2

    const-string v0, "SecEdgeColorBalanceProgressActivity"

    const-string v1, "[stpoc] disableNotifications - mStatusBarManager is not null"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3210000

    const/4 v1, 0x0

    and-int v2, v1, v0

    if-eq v2, v0, :cond_1

    const-string v3, "SecEdgeColorBalanceProgressActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[stpoc] disableNotifications disable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3, v0}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    :cond_1
    const-string v3, "SecEdgeColorBalanceProgressActivity"

    const-string v4, "[stpoc] disableNotifications already disabled"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    goto :goto_1

    :cond_2
    const-string v0, "SecEdgeColorBalanceProgressActivity"

    const-string v1, "[stpoc] disableNotifications - mStatusBarManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public enableStatusBar()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    const-string v0, "SecEdgeColorBalanceProgressActivity"

    const-string v1, "[stpoc] enableNotifications :  footerview"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    :cond_0
    const-string v0, "SecEdgeColorBalanceProgressActivity"

    const-string v1, "[stpoc] enableNotifications - mStatusBarManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized finishReadEdgeColor()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "SecEdgeColorBalanceProgressActivity"

    const-string v1, "[stpoc] finishReadEdgeColor"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const-string v0, "SecEdgeColorBalanceProgressActivity"

    const-string v1, "[stpoc] stop progressbar"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mIsProgressStop:Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->isEdgeColorBalanceRunning:Z

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->restoreDefaultScreenBrightnessMode(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$4;-><init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1d25

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mDNIe"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x1504

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const v3, 0x7f0d0188

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sec_display_poc_application_complete"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->blockHWkey()V

    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    const v4, 0x3000001a

    const-string v6, "SecEdgeColorBalanceProgressActivity"

    invoke-virtual {v3, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const v4, 0x7f0a0612

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const v4, 0x7f0a01dd

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mPercentageTextView:Landroid/widget/TextView;

    iput-boolean v5, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mIsProgressStop:Z

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getEdgeColorBalanceEstimatedTime(Lcom/samsung/android/hardware/display/SemMdnieManager;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mEstimatedTime:J

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->initUI()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->startProgressBar()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->showEdgeColorBalanceCancelDialog()V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    return v0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1a -> :sswitch_1
        0x24 -> :sswitch_1
        0x25 -> :sswitch_1
        0xa4 -> :sswitch_1
        0xbb -> :sswitch_1
        0x3e9 -> :sswitch_1
        0x43a -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onPause()V

    const-string v0, "SecEdgeColorBalanceProgressActivity"

    const-string v1, "[stpoc] onPause()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->enableStatusBar()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->restoreDefaultScreenBrightnessMode(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->stopEdgeColorBalanceAndProgressThread()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onResume()V

    const-string v0, "SecEdgeColorBalanceProgressActivity"

    const-string v1, "[stpoc] onResume()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->disableStatusBar()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sec_display_poc_application_complete"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mPocObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->bIsCallFirst:Z

    if-ne v0, v3, :cond_0

    const-string v0, "SecEdgeColorBalanceProgressActivity"

    const-string v1, "[stpoc] onResume() startPoc"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->startPoc()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->bIsCallFirst:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->showEdgeColorBalanceWasStoppedDialog()V

    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onStop()V

    const-string v0, "SecEdgeColorBalanceProgressActivity"

    const-string v1, "[stpoc] onStop()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->stopEdgeColorBalanceAndProgressThread()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1504

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public declared-synchronized startProgressBar()V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mBackgroundThread:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->currentPos:I

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopEdgeColorBalanceAndProgressThread()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->stopEdgeColorBalance()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mECBTask:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$UIThreadEdgeColorBalance;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mECBTask:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$UIThreadEdgeColorBalance;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$UIThreadEdgeColorBalance;->cancel(Z)Z

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mECBTask:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$UIThreadEdgeColorBalance;

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mPocObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "SecEdgeColorBalanceProgressActivity"

    const-string v4, "[stpoc] no mPocObserver"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    const-string v0, "SecEdgeColorBalanceProgressActivity"

    const-string v3, "[stpoc] stop progressbar"

    invoke-static {v0, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mIsProgressStop:Z

    :cond_1
    return-void
.end method
