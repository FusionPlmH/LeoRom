.class final Lcom/samsung/android/settings/guide/BtSettingsGuider;
.super Lcom/samsung/android/settings/guide/GuiderBase;
.source "BtSettingsGuider.java"

# interfaces
.implements Lcom/samsung/android/settings/guide/GuiderLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;,
        Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;,
        Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;
    }
.end annotation


# static fields
.field private static isFinished:Z

.field private static mCreate:Z


# instance fields
.field private mBTEnabled:Z

.field private mBTReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mInitialBondedCount:I

.field private mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

.field private mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

.field private mShowedLayout:I

.field private mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

.field private onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mCreate:Z

    sput-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    iput v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    new-instance v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider$4;-><init>(Lcom/samsung/android/settings/guide/BtSettingsGuider;)V

    iput-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListFocusEnabled(ZLandroid/app/Activity;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->sFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/guide/BtSettingsGuider;)Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/guide/BtSettingsGuider;)Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/guide/BtSettingsGuider;Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onReceive(Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V

    return-void
.end method

.method private handleDialogChange()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListFocusEnabled(ZLandroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private initHelpDialogContent(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    nop

    const v1, 0x7f0a035c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_0

    const v2, 0x7f0a0391

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method private initHelpDialogContent(II)V
    .locals 7

    const-string v0, "BtSettingsGuider"

    const-string v1, "initHelpDialogContent :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    nop

    const v1, 0x7f0a035c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_0

    const v2, 0x7f0a0391

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-virtual {v3}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v3

    const-string v4, "BtSettingsGuider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initHelpDialogContent :: multi window mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v5}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v2, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v5}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x4000000

    invoke-virtual {v5, v6}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v6, -0x80000000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_2
    goto :goto_0

    :cond_3
    const-string v3, "BtSettingsGuider"

    const-string v4, "initHelpDialogContent :: mMultiWindowManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "BtSettingsGuider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    const v3, 0x7f0a0368

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    new-instance v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider$2;-><init>(Lcom/samsung/android/settings/guide/BtSettingsGuider;)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method private invalidateHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 6

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0d01af

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->setFocus(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    sget-object v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$5;->$SwitchMap$com$samsung$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const v0, 0x7f120aec

    const v1, 0x7f0d01af

    goto :goto_1

    :pswitch_1
    const v0, 0x7f120af2

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0x7f0d01ae

    goto :goto_0

    :cond_1
    const v1, 0x7f0d01ad

    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/settings/guide/BtSettingsGuider$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider$1;-><init>(Lcom/samsung/android/settings/guide/BtSettingsGuider;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :pswitch_2
    const v0, 0x7f120aeb

    goto :goto_1

    :pswitch_3
    const v0, 0x7f120aec

    goto :goto_1

    :pswitch_4
    const v0, 0x7f120af1

    nop

    :cond_2
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private onBluetoothStateChanged()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    sput-boolean v3, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onDestroy()V

    :cond_3
    :goto_1
    return-void
.end method

.method private onDeviceBondStateChanged(II)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v4

    if-nez v4, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz v4, :cond_2

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    :cond_2
    iget v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    goto :goto_2

    :pswitch_1
    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    goto :goto_2

    :pswitch_2
    if-ne p2, v1, :cond_5

    iget v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-nez v4, :cond_4

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    goto :goto_1

    :cond_3
    iput v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    :cond_5
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onReceive(Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$5;->$SwitchMap$com$samsung$android$settings$guide$BtSettingsGuider$BluetoothBroadcastActions:[I

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onDeviceBondStateChanged(II)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onScanningStateChanged(Z)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onScanningStateChanged(Z)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onBluetoothStateChanged()V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onScanningStateChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    :cond_1
    return-void
.end method

.method private setFocus(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$5;->$SwitchMap$com$samsung$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_0
    goto :goto_0

    :pswitch_1
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/app/ListActivity;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/app/ListActivity;

    invoke-virtual {v1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    const v1, 0x7f0a04aa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v2, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->handleDialogChange()V

    iget v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    if-eq v1, p2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(II)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(I)V

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    :cond_2
    iput-object p3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput p2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    return-void
.end method


# virtual methods
.method protected changeHelpDialogState(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    if-eqz v0, :cond_6

    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getCachedDevicesNumber(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NOT_FOUND:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->isDeviceProfileShown()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-le v0, v1, :cond_4

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->FOUND:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    :cond_5
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->SCANNING:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public dismissHelpDialog()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a035b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-direct {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->handleDialogChange()V

    sget-object v3, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    iput-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BtSettingsGuider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->invalidateHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mCreate:Z

    const-string v0, "BtSettingsGuider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate is called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->finish()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/settings/guide/GuideFragment;->setsIsInGuideMode(Z)V

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider$3;-><init>(Lcom/samsung/android/settings/guide/BtSettingsGuider;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BtSettingsGuider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/settings/guide/GuideFragment;->setsIsInGuideMode(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    sget-boolean v1, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mCreate:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    sput-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onDestroy()V

    :cond_0
    const-string v1, "BtSettingsGuider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume is called "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v3, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v3, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v1, v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    const-string v1, "BtSettingsGuider"

    const-string v3, "changeHelpDialogState"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->isDeviceProfileShown()Z

    move-result v1

    if-ne v1, v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v3, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v1, v3, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iget-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v3, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    :goto_0
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->setGuidedActionBarClickable(Z)V

    sput-boolean v2, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mCreate:Z

    return-void
.end method

.method protected setGuidedActionBarClickable(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return-void
.end method

.method public showCompleteDialog()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f121e60

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-wide/16 v0, 0x514

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onDestroy()V

    return-void
.end method

.method public showHelpDialog()V
    .locals 0

    return-void
.end method

.method public showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->setFocus(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$5;->$SwitchMap$com$samsung$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f120aec

    const v3, 0x7f0d01af

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, v2, v3, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v2, v3, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    const v2, 0x7f120af2

    if-eqz v0, :cond_1

    const v0, 0x7f0d01ae

    invoke-direct {p0, v2, v0, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0d01ad

    invoke-direct {p0, v2, v0, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/guide/GuideModeHelper;->drawActionPointerForSwitcher(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)V

    goto :goto_1

    :pswitch_3
    const v0, 0x7f120aeb

    invoke-direct {p0, v0, v3, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, v2, v3, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    :pswitch_5
    const v0, 0x7f120af1

    invoke-direct {p0, v0, v3, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    nop

    :cond_2
    :goto_1
    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->setGuidedActionBarClickable(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
