.class public Lcom/android/server/notification/SmartAlertController;
.super Ljava/lang/Object;
.source "SmartAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartAlertController"


# instance fields
.field filter:Landroid/content/IntentFilter;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInCall:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMissedEventExist:Z

.field private mMotionEnabled:Z

.field private mMotionRegistered:Z

.field private final mPM:Landroid/os/PowerManager;

.field private mPickUpVibratePattern:[J

.field private mScreenOn:Z

.field private mSmartAlertMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

.field private mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

.field private final mSmartAlertSettingObserver:Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mPickUpVibratePattern:[J

    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mScreenOn:Z

    new-instance v1, Lcom/android/server/notification/SmartAlertController$1;

    invoke-direct {v1, p0}, Lcom/android/server/notification/SmartAlertController$1;-><init>(Lcom/android/server/notification/SmartAlertController;)V

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    new-instance v1, Lcom/android/server/notification/SmartAlertController$5;

    invoke-direct {v1, p0}, Lcom/android/server/notification/SmartAlertController$5;-><init>(Lcom/android/server/notification/SmartAlertController;)V

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mPM:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mPM:Landroid/os/PowerManager;

    const-string v2, "SmartAlert"

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->filter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->filter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->filter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->filter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;

    iget-object v2, p0, Lcom/android/server/notification/SmartAlertController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;-><init>(Lcom/android/server/notification/SmartAlertController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertSettingObserver:Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "motion_pick_up"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertSettingObserver:Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertSettingObserver:Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;->onChange(Z)V

    return-void

    nop

    nop

    :array_0
    .array-data 8
        0x0
        0x4b
        0x19
        0x4b
        0x12c
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/notification/SmartAlertController;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/SmartAlertController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mInCall:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/notification/SmartAlertController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/notification/SmartAlertController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mInCall:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/notification/SmartAlertController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/notification/SmartAlertController;->setSmartAlertEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/notification/SmartAlertController;)[J
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mPickUpVibratePattern:[J

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/SmartAlertController;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/SmartAlertController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/notification/SmartAlertController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/notification/SmartAlertController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/notification/SmartAlertController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/notification/SmartAlertController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/notification/SmartAlertController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/notification/SmartAlertController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/notification/SmartAlertController;)Lcom/samsung/android/gesture/SemMotionRecognitionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/notification/SmartAlertController;)Lcom/samsung/android/gesture/SemMotionEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    return-object v0
.end method

.method private setSmartAlertEnabled(Z)V
    .locals 3

    const-string v0, "SmartAlertController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSmartAlertEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " pre:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    iget-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/notification/SmartAlertController;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iput-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/notification/SmartAlertController;->unregisterListener()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public checkMissedEvent(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/notification/SmartAlertController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/notification/SmartAlertController$2;-><init>(Lcom/android/server/notification/SmartAlertController;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener()V
    .locals 1

    new-instance v0, Lcom/android/server/notification/SmartAlertController$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/SmartAlertController$3;-><init>(Lcom/android/server/notification/SmartAlertController;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public resetSmartAlertSettingObserver(I)V
    .locals 4

    const-string v0, "SmartAlertController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetSmartAlertSettingObserver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertSettingObserver:Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertSettingObserver:Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "motion_pick_up"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertSettingObserver:Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public unregisterListener()V
    .locals 1

    new-instance v0, Lcom/android/server/notification/SmartAlertController$4;

    invoke-direct {v0, p0}, Lcom/android/server/notification/SmartAlertController$4;-><init>(Lcom/android/server/notification/SmartAlertController;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
