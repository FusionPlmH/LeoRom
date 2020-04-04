.class public Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "SecEdgeColorBalanceSettingsActivity.java"


# instance fields
.field private final mApplyButtonListener:Landroid/view/View$OnClickListener;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:I

.field private mContext:Landroid/content/Context;

.field private mEdgeColorBalanceApplyButton:Landroid/widget/Button;

.field private mEdgeColorBalanceApplyDialog:Landroid/app/AlertDialog;

.field private mEdgeColorBalanceBatteryCheckDialog:Landroid/app/AlertDialog;

.field private mEdgeColorBalanceErrorOccuredDialog:Landroid/app/AlertDialog;

.field private mEdgeColorBalancePreviousIndex:I

.field private mEdgeColorBalanceReadErrorOccuredOnProgressDialog:Landroid/app/AlertDialog;

.field private mEdgeColorBalanceSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

.field private mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceApplyButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceApplyDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceErrorOccuredDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceReadErrorOccuredOnProgressDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalancePreviousIndex:I

    iput v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mBatteryLevel:I

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceBatteryCheckDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$2;-><init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mApplyButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$12;-><init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalancePreviousIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceApplyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->showEdgeColorBalanceBatteryCheckDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->showEdgeColorBalanceApplyDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->startEdgeColorBalance()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)Lcom/samsung/android/hardware/display/SemMdnieManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    return-object v0
.end method

.method private disableStatusBar()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_2

    const-string v0, "SecEdgeColorBalanceSettingsActivity"

    const-string v1, "[stpoc] disableNotifications - mStatusBarManager is not null"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3210000

    const/4 v1, 0x0

    and-int v2, v1, v0

    if-eq v2, v0, :cond_1

    const-string v3, "SecEdgeColorBalanceSettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[stpoc] disableNotifications disable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3, v0}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    :cond_1
    const-string v3, "SecEdgeColorBalanceSettingsActivity"

    const-string v4, "[stpoc] disableNotifications already disabled"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    goto :goto_1

    :cond_2
    const-string v0, "SecEdgeColorBalanceSettingsActivity"

    const-string v1, "[stpoc] disableNotifications - mStatusBarManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private enableStatusBar()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    const-string v0, "SecEdgeColorBalanceSettingsActivity"

    const-string v1, "[stpoc] enableNotifications :  footerview"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    :cond_0
    const-string v0, "SecEdgeColorBalanceSettingsActivity"

    const-string v1, "[stpoc] enableNotifications - mStatusBarManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private hasEdgeColorBalanceErrorOccurredOnBoot()Z
    .locals 8

    const-string v0, "/efs/etc/poc/failcount"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SecEdgeColorBalanceSettingsActivity"

    const-string v4, "[stpoc] hasErrorOccuredOnBoot failcount file exist"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "SecEdgeColorBalanceSettingsActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[stpoc] failcount value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "SecEdgeColorBalanceSettingsActivity"

    const-string v6, "[stpoc] hasErrorOccuredOnBoot result : true"

    invoke-static {v5, v6}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    nop

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v5

    :cond_0
    nop

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_1
    goto :goto_4

    :catch_2
    move-exception v4

    goto :goto_1

    :goto_2
    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_3
    move-exception v5

    :cond_1
    :goto_3
    :try_start_7
    throw v4

    :cond_2
    :goto_4
    const-string v3, "SecEdgeColorBalanceSettingsActivity"

    const-string v4, "[stpoc] hasErrorOccuredOnBoot result : false"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    return v1

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "SecEdgeColorBalanceSettingsActivity"

    const-string v3, "[stpoc] hasErrorOccuredOnBoot result : false"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private initEdgeColorBalanceUI()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->initEdgeColorBalanceImageArray(Landroid/content/Context;Lcom/samsung/android/hardware/display/SemMdnieManager;)V

    const v0, 0x7f0a029b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f121462

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f121463

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v3, 0x7f0a029a

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceApplyButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceApplyButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceApplyButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mApplyButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceApplyButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    const v3, 0x7f0a029c

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iput-object v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    new-instance v4, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$1;-><init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentSeekbarIndex(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v3, v2

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNeedSkipEdgeColorBalance(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "sec_edge_color_balance_case_d1_index"

    const/4 v5, -0x1

    invoke-static {v2, v4, v5, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const-string v4, "/efs/etc/poc/mdnie_info"

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromFile(Ljava/lang/String;)I

    move-result v4

    const-string v6, "SecEdgeColorBalanceSettingsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tempDB : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " /tempEFS : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v2, v5, :cond_3

    if-ne v4, v5, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v4, -0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sec_edge_color_balance_case_d1_index"

    invoke-static {v5, v6, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    :cond_3
    move v3, v2

    :cond_4
    :goto_1
    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalancePreviousIndex:I

    const-string v1, "SecEdgeColorBalanceSettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[stpoc] current preset : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getEdgeColorBalanceImageFromArray(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_5
    return-void
.end method

.method private showEdgeColorBalanceApplyDialog()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceApplyDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceApplyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceApplyDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$3;-><init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)V

    new-instance v1, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$4;-><init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)V

    new-instance v2, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$5;-><init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f121467

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f121463

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f120774

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f120517

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceApplyDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceApplyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    const/16 v3, 0x1d25

    invoke-static {v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    return-void
.end method

.method private showEdgeColorBalanceBatteryCheckDialog()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceBatteryCheckDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceBatteryCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceBatteryCheckDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$10;-><init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)V

    new-instance v1, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$11;-><init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f121469

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f121468

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120517

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceBatteryCheckDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceBatteryCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showEdgeColorBalanceReadErrorOccuredOnProgressDialog()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceReadErrorOccuredOnProgressDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceReadErrorOccuredOnProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceReadErrorOccuredOnProgressDialog:Landroid/app/AlertDialog;

    const/16 v0, 0x1d26

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getMetricsCategory()I

    move-result v1

    const-wide/16 v2, 0x2

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    new-instance v1, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$8;-><init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)V

    new-instance v2, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$9;-><init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f12146d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f12146c

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f120517

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceReadErrorOccuredOnProgressDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceReadErrorOccuredOnProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showEdgeColorBalanceWriteErrorOccuredOnBootDialog()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceErrorOccuredDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceErrorOccuredDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceErrorOccuredDialog:Landroid/app/AlertDialog;

    const/16 v0, 0x1d26

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getMetricsCategory()I

    move-result v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    new-instance v1, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$6;-><init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)V

    new-instance v2, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$7;-><init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f121466

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f121464

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f121465

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f120517

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceErrorOccuredDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceErrorOccuredDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startEdgeColorBalance()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.settings.EDGE_COLOR_BALANCE_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "d1_poc_index"

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mEdgeColorBalanceSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->backupDefaultScreenBrightnessMode(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1d24

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "SecEdgeColorBalanceSettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stpoc] onActivityResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2711

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "SecEdgeColorBalanceSettingsActivity"

    const-string v1, "[stpoc] EdgeColorBalance is donepoc_fwup"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "SecEdgeColorBalanceSettingsActivity"

    const-string v1, "[stpoc] EdgeColorBalance is canceled, just finish to previous menu"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mDNIe"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "ModePreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASSISTANT_MENU is killed when EdgeColorBalanceBalanceSettingsActivity is created, DB : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assistant_menu"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0d0187

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x1504

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->initEdgeColorBalanceUI()V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onPause()V

    const-string v0, "SecEdgeColorBalanceSettingsActivity"

    const-string v1, "[stpoc] onPause()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->enableStatusBar()V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "SecEdgeColorBalanceSettingsActivity"

    const-string v2, "[stpoc] no BatteryReceiver"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onResume()V

    const-string v0, "SecEdgeColorBalanceSettingsActivity"

    const-string v1, "[stpoc] onResume()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SecEdgeColorBalanceSettingsActivity"

    const-string v1, "[stpoc] isDesktopMode"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->disableStatusBar()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->hasEdgeColorBalanceErrorOccurredOnBoot()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->showEdgeColorBalanceWriteErrorOccuredOnBootDialog()V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sec_display_poc_application_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->showEdgeColorBalanceReadErrorOccuredOnProgressDialog()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "sec_display_poc_application_complete"

    invoke-static {v1, v3, v2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1504

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
