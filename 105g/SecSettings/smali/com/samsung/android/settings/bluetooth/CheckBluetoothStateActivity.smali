.class public final Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;
.super Landroid/app/Activity;
.source "CheckBluetoothStateActivity.java"


# static fields
.field private static mDialogExist:Z

.field private static mExpectingBluetoothOn:Z

.field private static mIsDestroyed:Z

.field private static mIsRegisterKeyGuardReceiver:Z


# instance fields
.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private final mKeyGuardHandler:Landroid/os/Handler;

.field private final mKeyGuardReceiver:Landroid/content/BroadcastReceiver;

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private final mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsRegisterKeyGuardReceiver:Z

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mExpectingBluetoothOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$2;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$3;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$5;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mExpectingBluetoothOn:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->processEnableResult()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    return p0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->sendBendedPendingIntent()V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsRegisterKeyGuardReceiver:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsRegisterKeyGuardReceiver:Z

    return p0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private isFrpEnabled()Z
    .locals 11

    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    nop

    const-string v1, "CheckBluetoothStateActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFrpEnabled :: rsm.getStatus() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , rsm.getServiceSupport() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v5

    move v6, v3

    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_3

    aget-object v7, v5, v6

    const-string v8, "CheckBluetoothStateActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isFrpEnabled :: Account - name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", type :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v9, "com.google"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    if-eq v1, v8, :cond_1

    :cond_0
    iget-object v8, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v9, "com.osp.app.signin"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-ne v1, v4, :cond_2

    :cond_1
    return v3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return v4

    :cond_4
    return v3
.end method

.method private launchDevicePicker()V
    .locals 11

    const-string v0, "CheckBluetoothStateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchDevicePicker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.bluetooth.CheckBluetoothStateActivity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v6, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v7, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v8, "CheckBluetoothStateActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startActivity() failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    return-void
.end method

.method private processEnableResult()V
    .locals 5

    const-string v0, "CheckBluetoothStateActivity"

    const-string v1, "processEnableResult ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CheckBluetoothStateActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "productName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "joon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "joshua"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCMCCModel()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    return-void

    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mExpectingBluetoothOn:Z

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x4e20

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    :goto_0
    return-void
.end method

.method private sendBendedPendingIntent()V
    .locals 8

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.BLUETOOTH_KEYGUARD_UNLOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "afterKeyguardGone"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "dismissIfInsecure"

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "CheckBluetoothStateActivity"

    const-string v5, "sendBendedPendingIntent"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v4}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v5, 0x2

    iput v5, v2, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "CheckBluetoothStateActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0d013a

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->setContentView(I)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mExpectingBluetoothOn:Z

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    return-void

    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;

    invoke-direct {v3, v1}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    const-string v0, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "isBluetoothEnabled"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "isBluetoothEnabled"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v11, v0

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v5, "CheckBluetoothStateActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CursorIndexOutOfBoundsException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v5, "CheckBluetoothStateActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CursorWindowAllocationException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    :goto_2
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    const-string v0, "false"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v14, 0x0

    const-string v15, "isSettingsChangesAllowed"

    const/16 v17, 0x0

    move-object v13, v5

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "isSettingsChangesAllowed"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "true"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v6, v0

    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_3
    const-string v8, "CheckBluetoothStateActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CursorIndexOutOfBoundsException"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v8, "CheckBluetoothStateActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CursorWindowAllocationException"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    :goto_5
    if-eqz v6, :cond_8

    if-nez v11, :cond_3

    goto/16 :goto_7

    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_4

    const-string v0, "CheckBluetoothStateActivity"

    const-string v2, "Bluetooth is not supported on this device"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.samsung.intent.action.BLUETOOTH_KEYGUARD_UNLOCK"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->isFrpEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x7f12037d

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    return-void

    :cond_5
    const-string v4, "keyguard"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    iput v2, v5, Landroid/os/Message;->what:I

    iget-object v2, v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xc8

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_6
    iget-object v2, v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v5, 0xa

    if-ne v2, v5, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->processEnableResult()V

    goto :goto_6

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    :goto_6
    return-void

    :cond_8
    :goto_7
    const-string v0, "CheckBluetoothStateActivity"

    const-string v8, "onCreate Bluetooth disable"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f120400

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "CheckBluetoothStateActivity"

    const-string v1, "onDestroy :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsRegisterKeyGuardReceiver:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsRegisterKeyGuardReceiver:Z

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "CheckBluetoothStateActivity"

    const-string v1, "onResume :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
