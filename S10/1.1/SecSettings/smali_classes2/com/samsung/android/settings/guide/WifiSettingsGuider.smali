.class public final Lcom/samsung/android/settings/guide/WifiSettingsGuider;
.super Lcom/samsung/android/settings/guide/GuiderBase;
.source "WifiSettingsGuider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Lcom/samsung/android/settings/guide/GuiderLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;,
        Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;
    }
.end annotation


# static fields
.field public static isWifiGuideOn:Z

.field private static mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;


# instance fields
.field private builderstartDialog:Landroid/app/AlertDialog;

.field private count:I

.field private mActivity:Landroid/app/Activity;

.field private mClosed:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCreate:Z

.field private mEnableScanMenuItem:Z

.field private mFirstCheck:Z

.field private mFirstStart:Z

.field public mHandler:Landroid/os/Handler;

.field private mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

.field private mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private mScreenOnCheck:I

.field private mSecurityDialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mStateContainerRestored:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private final mWiFiIntentFilter:Landroid/content/IntentFilter;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sput-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->isWifiGuideOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerRestored:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mCreate:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    iput-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    iput-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    iput-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    iput v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    iput v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->count:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstCheck:Z

    new-instance v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$1;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$2;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.guide.DISMISS_HELP_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100()Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    return-object v0
.end method

.method private initHelpDialogContent(II)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    nop

    const v1, 0x7f0a035a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_0

    const v2, 0x7f0a038f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-virtual {v2}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v2

    const-string v3, "WifiSettingsGuider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initHelpDialogContent :: multi window mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_2
    goto :goto_0

    :cond_3
    const-string v2, "WifiSettingsGuider"

    const-string v3, "initHelpDialogContent :: mMultiWindowManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "WifiSettingsGuider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    const v2, 0x7f0a0366

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    new-instance v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$7;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method private invalidateHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setFocus(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    sget-object v2, Lcom/samsung/android/settings/guide/WifiSettingsGuider$8;->$SwitchMap$com$samsung$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v1, 0x7f120adb

    const v0, 0x7f0d01b4

    goto :goto_0

    :pswitch_1
    const v1, 0x7f120ad6

    const v0, 0x7f0d01b3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$6;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "WifiSettingsGuider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NullPointerException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :pswitch_2
    const v1, 0x7f120ada

    const v0, 0x7f0d01b7

    goto :goto_0

    :pswitch_3
    const v1, 0x7f120ad8

    const v0, 0x7f0d01b7

    goto :goto_0

    :pswitch_4
    const v1, 0x7f120ad9

    const v0, 0x7f0d01b7

    goto :goto_0

    :pswitch_5
    const v1, 0x7f120ad7

    const v0, 0x7f0d01b7

    goto :goto_0

    :pswitch_6
    nop

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setFocus(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$8;->$SwitchMap$com$samsung$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    nop

    :cond_2
    :goto_0
    return-void
.end method

.method private setGuidedActionBarClickable(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

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

    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return-void
.end method

.method private setScanOptionEnable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method private showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V
    .locals 2

    sget-boolean v0, Lcom/android/settings/wifi/WifiDialog;->mIsShow:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, p5}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    sput-object p4, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    return-void
.end method


# virtual methods
.method public dismissCompleteDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public dismissHelpDialog()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0359

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider$8;->$SwitchMap$com$samsung$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v3}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_0

    :cond_1
    nop

    :goto_0
    sget-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sput-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "WifiSettingsGuider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dismissHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_0

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$8;->$SwitchMap$com$samsung$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    nop

    :goto_0
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sput-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic finish()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/guide/GuiderBase;->finish()V

    return-void
.end method

.method protected handleEvent(Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettingsGuider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEvent  action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NO_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    if-nez v2, :cond_3

    sget-object v2, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    :cond_3
    :goto_0
    goto/16 :goto_3

    :cond_4
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "networkInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    if-nez v3, :cond_5

    sget-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    goto/16 :goto_1

    :cond_5
    sget-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_a

    sget-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v3, v4, :cond_7

    sget-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v3, v4, :cond_a

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_a

    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NO_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    :cond_a
    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    goto/16 :goto_3

    :cond_b
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->count:I

    const/4 v3, 0x3

    if-ge v1, v3, :cond_c

    iget v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->count:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->count:I

    :cond_c
    iget v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->count:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_d

    iput-boolean v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstCheck:Z

    :cond_d
    const-string v1, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-boolean v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstCheck:Z

    if-eqz v3, :cond_f

    if-eq v1, v2, :cond_e

    if-nez v1, :cond_10

    :cond_e
    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissCompleteDialog()V

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onDestroy()V

    goto :goto_2

    :cond_f
    sget-object v2, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    :cond_10
    :goto_2
    goto :goto_3

    :cond_11
    const-string v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "called_dialog"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_13

    const-string v1, "WifiWarningDialog"

    const-string v2, "from"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "WifiSettingsGuider"

    const-string v2, "Hotspot is ON or Wifi is off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissCompleteDialog()V

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onDestroy()V

    goto :goto_3

    :cond_12
    const-string v1, "com.android.settings.guide.DISMISS_HELP_DIALOG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    :cond_13
    :goto_3
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showCompleteDialog()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->invalidateHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "WifiSettingsGuider"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstCheck:Z

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_1
    new-instance v2, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v2}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    iput-boolean v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mCreate:Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WifiSettingsGuider"

    const-string v2, "IllegalArgumentException : mReceiver is not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->finish()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 6

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/settings/guide/GuideFragment;->setsIsInGuideMode(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v3}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v3}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerRestored:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    :cond_1
    if-nez v2, :cond_2

    const/4 v3, 0x1

    iput v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    :cond_2
    const-string v3, "WifiSettingsGuider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPause :: mScreenOnCheck"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->isWifiGuideOn:Z

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    const-string v0, "WifiSettingsGuider"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/settings/guide/GuideFragment;->setsIsInGuideMode(Z)V

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isInGuideMode()Z

    move-result v1

    if-nez v1, :cond_0

    sput-boolean v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->isWifiGuideOn:Z

    :cond_0
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v2, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v2, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v2, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerRestored:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    if-nez v0, :cond_5

    const-string v0, "WifiSettingsGuider"

    const-string v1, "onResume :: showHelpDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    iput v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mCreate:Z

    if-nez v0, :cond_6

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-eq v0, v1, :cond_6

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-eq v0, v1, :cond_6

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-eq v0, v1, :cond_6

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-eq v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissCompleteDialog()V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onDestroy()V

    :cond_6
    iput-boolean v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mCreate:Z

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public showCompleteDialog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01b9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    sget-object v2, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->show()V

    :cond_1
    return-void
.end method

.method public showHelpDialog()V
    .locals 0

    return-void
.end method

.method public showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 14

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setFocus(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$8;->$SwitchMap$com$samsung$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$5;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$4;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$3;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_1

    :pswitch_4
    nop

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$8;->$SwitchMap$com$samsung$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_5
    const v2, 0x7f120adb

    const v3, 0x7f0d01b4

    sget-object v4, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto/16 :goto_3

    :pswitch_6
    const v8, 0x7f120ad6

    const v9, 0x7f0d01b3

    sget-object v10, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    const/4 v12, 0x1

    move-object v7, p0

    move-object v11, p1

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->drawActionPointerForSwitcher(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)V

    goto :goto_3

    :pswitch_7
    const v3, 0x7f120ada

    const v4, 0x7f0d01b7

    sget-object v5, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    const/4 v7, 0x1

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_3

    :pswitch_8
    const v9, 0x7f120ad8

    const v10, 0x7f0d01b7

    sget-object v11, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    const/4 v13, 0x1

    move-object v8, p0

    move-object v12, p1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_3

    :pswitch_9
    const v1, 0x7f120ad9

    const v2, 0x7f0d01b7

    sget-object v3, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_3

    :pswitch_a
    const v7, 0x7f120ad7

    const v8, 0x7f0d01b7

    sget-object v9, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    const/4 v11, 0x1

    move-object v6, p0

    move-object v10, p1

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_3

    :pswitch_b
    nop

    :cond_3
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
