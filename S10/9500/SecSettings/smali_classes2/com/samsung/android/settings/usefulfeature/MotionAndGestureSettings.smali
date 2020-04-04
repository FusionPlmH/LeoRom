.class public Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionAndGestureSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mContext:Landroid/content/Context;

.field public static final mMotionFeatures:[Ljava/lang/String;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mDirectCall:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mDirectCallObserver:Landroid/database/ContentObserver;

.field private mDoubleTapToWakeUp:Landroid/support/v14/preference/SecSwitchPreference;

.field private mEasyMute:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mEasyMuteObserver:Landroid/database/ContentObserver;

.field private mFingerSensorGesture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mFingerSensorGestureObserver:Landroid/database/ContentObserver;

.field private mInteractionControlObserver:Landroid/database/ContentObserver;

.field private mLiftToWake:Landroid/support/v14/preference/SecSwitchPreference;

.field private mOneHandOperation:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mOneHandedOperationObserver:Landroid/database/ContentObserver;

.field private mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

.field private mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mSmartAlertObserver:Landroid/database/ContentObserver;

.field private mSmartStay:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mSmartStayObserver:Landroid/database/ContentObserver;

.field private mSwipeToCallObserver:Landroid/database/ContentObserver;

.field private mSwipeToCallorSendMessages:Landroid/support/v14/preference/SecSwitchPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "palm_swipe_to_capture"

    const-string v1, "smart_alert"

    const-string v2, "easy_mute"

    const-string v3, "direct_call"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mMotionFeatures:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$19;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$19;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$2;-><init>(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCallObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$3;-><init>(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMuteObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$4;-><init>(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlertObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$5;-><init>(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$6;-><init>(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mInteractionControlObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$7;-><init>(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$8;-><init>(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mFingerSensorGestureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$9;-><init>(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSwipeToCallObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartStay:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mOneHandOperation:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCall:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mFingerSensorGesture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->isSupportSpay(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSwipeToCallorSendMessages:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getSwipeToCallSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->dismissAllDialog()V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMute:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->setOneHandOperation(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getSummaryForMutePauseSwitch()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dismissAllDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private static getSummaryForMutePauseSwitch()I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    const/high16 v2, 0x200000

    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f120ea9

    goto :goto_1

    :cond_1
    const v0, 0x7f120ea7

    goto :goto_1

    :cond_2
    :goto_0
    const v0, 0x7f120eaa

    :goto_1
    return v0
.end method

.method private getSwipeToCallSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.samsung.android.messaging"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v3, "MotionAndGestureSettings"

    const-string v4, "Package : com.samsung.android.messaging"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string v2, ""

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const v4, 0x1dcd6500

    if-lt v3, v4, :cond_1

    const v3, 0x7f1219ac

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    const v3, 0x7f1219aa

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    :goto_1
    const v3, 0x7f1219ad

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2
.end method

.method private isReadyOneHandedOperationStatusEnable()Z
    .locals 15

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSwitchAccessEnabled(Landroid/content/Context;)Z

    move-result v1

    sget-object v11, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v11, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v14, "accessibility_magnifier"

    invoke-static {v11, v14, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v12, :cond_0

    move v11, v12

    goto :goto_0

    :cond_0
    move v11, v13

    :goto_0
    move v3, v11

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v14, "accessibility_display_magnification_enabled"

    invoke-static {v11, v14, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v14, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v11, v14, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_1

    :cond_2
    move v11, v13

    goto :goto_2

    :cond_3
    :goto_1
    move v11, v12

    :goto_2
    move v4, v11

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v14, "finger_magnifier"

    invoke-static {v11, v14, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v12, :cond_4

    move v11, v12

    goto :goto_3

    :cond_4
    move v11, v13

    :goto_3
    move v5, v11

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v11, v12

    goto :goto_4

    :cond_5
    move v11, v13

    :goto_4
    move v6, v11

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v14, "access_control_use"

    invoke-static {v11, v14, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v12, :cond_6

    move v11, v12

    goto :goto_5

    :cond_6
    move v11, v13

    :goto_5
    move v7, v11

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v14, "assistant_menu"

    invoke-static {v11, v14, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v12, :cond_7

    move v11, v12

    goto :goto_6

    :cond_7
    move v11, v13

    :goto_6
    move v8, v11

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v14, "direct_access"

    invoke-static {v11, v14, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v12, :cond_8

    move v11, v12

    goto :goto_7

    :cond_8
    move v11, v13

    :goto_7
    move v9, v11

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v14, "accessibility_autoclick_enabled"

    invoke-static {v11, v14, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v12, :cond_9

    move v13, v12

    nop

    :cond_9
    move v10, v13

    if-nez v1, :cond_a

    if-nez v2, :cond_a

    if-nez v3, :cond_a

    if-nez v4, :cond_a

    if-nez v5, :cond_a

    if-nez v6, :cond_a

    if-nez v7, :cond_a

    if-nez v8, :cond_a

    if-nez v10, :cond_a

    if-eqz v9, :cond_b

    :cond_a
    const/4 v0, 0x0

    :cond_b
    return v0
.end method

.method public static isSupportFingerPrint(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "FingerSensorGesture"

    const-string v2, "SEC_PRODUCT_FEATURE_COMMON_SUPPORT_FINGERPRINT"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->semHasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isSupportSpay(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.spay"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.samsung.android.spay.quickgesture"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v1, v0

    const-string v0, "MotionAndGestureSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Samsung Pay supports finger gesture : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MotionAndGestureSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "MotionAndGestureSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load meta-data, NameNotFound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :goto_1
    return v1
.end method

.method private makeOneHandOperationDisablePopup()V
    .locals 11

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f121030

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->dismissAllDialog()V

    sget-object v2, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f120041

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.samsung.android.app.talkback"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isExistAccessbilitiyPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\u200f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f120708

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.google.android.marvin.talkback"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "\u200f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v2, "\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f120709

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.samsung.android.universalswitch"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isExistAccessbilitiyPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f12070a

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.samsung.android.app.accesscontrol"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isExistAccessbilitiyPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f120027

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.samsung.android.app.assistantmenu"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isExistAccessbilitiyPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f1201a2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v2, "\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f12070b

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f120056

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f12002a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x1030132

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v5, 0x7f0d0112

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v6, 0x7f0a0248

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a0249

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f12102f

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    new-instance v10, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$18;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$18;-><init>(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/high16 v9, 0x1040000

    new-instance v10, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$17;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$17;-><init>(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$16;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$16;-><init>(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->dismissAllDialog()V

    const v0, 0x7f12105e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f121a64

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f1204a6

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    aput-object v1, v6, v3

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$11;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$11;-><init>(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)V

    const v6, 0x7f121a63

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$10;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$10;-><init>(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$12;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$12;-><init>(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private maketurnOffUniversalPopup()V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->dismissAllDialog()V

    const v0, 0x7f12105e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f121a64

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f12006e

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f1204a6

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$14;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$14;-><init>(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)V

    const v5, 0x7f121a63

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$13;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$13;-><init>(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$15;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$15;-><init>(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private setOneHandOperation(I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "any_screen_enabled"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "one_handed_op_wakeup_type"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "navigation_bar_gesture_while_hidden"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "one_handed_op_wakeup_type"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f12102d

    invoke-static {v0, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mOneHandOperation:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mOneHandOperation:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mOneHandOperation:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v2, :cond_5

    if-eqz v3, :cond_4

    const v1, 0x7f121037

    goto :goto_3

    :cond_4
    const v1, 0x7f12103b

    goto :goto_3

    :cond_5
    const v1, 0x7f12102b

    :goto_3
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0b037b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-eqz v2, :cond_6

    const-wide/16 v5, 0x3e8

    goto :goto_4

    :cond_6
    const-wide/16 v5, 0x0

    :goto_4
    invoke-static {v0, v1, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method

.method private updateOneHandOperationPreference()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "one_handed_op_wakeup_type"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    sget-object v4, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledOneHandOperation(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mOneHandOperation:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mOneHandOperation:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mOneHandOperation:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mOneHandOperation:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string v1, ""

    if-eqz v0, :cond_4

    if-eqz v3, :cond_3

    const v2, 0x7f121037

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    const v2, 0x7f12103b

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const v2, 0x7f12102b

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mOneHandOperation:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1db4

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const v1, 0x7f1219a9

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "surface_palm_swipe"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    move v0, v2

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_2

    const v1, 0x7f1219b4

    nop

    :cond_2
    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    const v0, 0x7f1500da

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDoubleTapMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "double_tab_to_wake_up"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDoubleTapToWakeUp:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDoubleTapToWakeUp:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "double_tab_to_wake_up"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->removePreference(Ljava/lang/String;)Z

    :goto_0
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportLiftToWakeSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "lift_to_wake"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mLiftToWake:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mLiftToWake:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    :cond_1
    const-string v0, "lift_to_wake"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->removePreference(Ljava/lang/String;)Z

    :goto_1
    const-string v0, "smart_stay"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartStay:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isT4RModel()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "smart_stay"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->removePreference(Ljava/lang/String;)Z

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartStay:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartStay:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartStay:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_3
    const-string v0, "smart_alert"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_4
    const-string v0, "easy_mute"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMute:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMute:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMute:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMute:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_5
    const-string v0, "direct_call"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCall:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCall:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCall:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCall:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_6
    const-string v0, "onehand_operation_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mOneHandOperation:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mOneHandOperation:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mOneHandOperation:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mOneHandOperation:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_7
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isVisibleOneHandOperation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "onehand_operation_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->removePreference(Ljava/lang/String;)Z

    :cond_8
    const-string v0, "finger_sensor_gesture"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mFingerSensorGesture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mFingerSensorGesture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mFingerSensorGesture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mFingerSensorGesture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_9
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->isSupportFingerPrint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "finger_sensor_gesture"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->removePreference(Ljava/lang/String;)Z

    :cond_a
    const-string v0, "palm_swipe_to_capture"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_b
    const-string v0, "swipe_to_call_or_send_messages"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSwipeToCallorSendMessages:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSwipeToCallorSendMessages:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSwipeToCallorSendMessages:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSwipeToCallorSendMessages:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_c
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isCMCAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "swipe_to_call_or_send_messages"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->removePreference(Ljava/lang/String;)Z

    :cond_e
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mMotionFeatures:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->removePreference(Ljava/lang/String;)Z

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_10
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mFingerSensorGesture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mFingerSensorGestureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCall:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlertObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMute:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMuteObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSwipeToCallorSendMessages:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSwipeToCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMute:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCall:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mInteractionControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_9
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDoubleTapToWakeUp:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "double_tab_to_wake_up"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getMetricsCategory()I

    move-result v1

    const/16 v3, 0x1d2b

    int-to-long v4, v0

    invoke-static {v1, v3, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto/16 :goto_f

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mLiftToWake:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "lift_to_wake"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getMetricsCategory()I

    move-result v1

    const/16 v3, 0x1db5

    int-to-long v4, v0

    invoke-static {v1, v3, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto/16 :goto_f

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartStay:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    const v7, 0x7f1219b4

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v8, "intelligent_sleep_mode"

    invoke-static {v1, v8, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartStay:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartStay:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartStay:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    const v7, 0x7f121865

    :goto_0
    invoke-virtual {v1, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getMetricsCategory()I

    move-result v1

    const/16 v7, 0x12f0

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    move-wide v3, v5

    goto :goto_1

    :cond_3
    nop

    :goto_1
    invoke-static {v1, v7, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto/16 :goto_f

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    sget-object v7, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSamsungMessageAppEnable(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_6

    const v7, 0x7f12107d

    goto :goto_2

    :cond_6
    const v7, 0x7f12107c

    :goto_2
    invoke-virtual {v1, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getMetricsCategory()I

    move-result v1

    const/16 v7, 0x1114

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    move-wide v3, v5

    goto :goto_3

    :cond_7
    nop

    :goto_3
    invoke-static {v1, v7, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "motion_pick_up"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_f

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMute:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMute:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMute:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMute:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_4

    :cond_9
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getSummaryForMutePauseSwitch()I

    move-result v7

    :goto_4
    invoke-virtual {v1, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getMetricsCategory()I

    move-result v1

    const/16 v7, 0x1115

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_a

    move-wide v3, v5

    goto :goto_5

    :cond_a
    nop

    :goto_5
    invoke-static {v1, v7, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "motion_merged_mute_pause"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "motion_overturn"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_b
    sget-object v1, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    const/high16 v3, 0x200000

    invoke-static {v1, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "surface_palm_touch"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_f

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCall:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCall:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCall:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCall:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_6

    :cond_d
    const v7, 0x7f121081

    :goto_6
    invoke-virtual {v1, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getMetricsCategory()I

    move-result v1

    const/16 v7, 0x1113

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_e

    move-wide v3, v5

    goto :goto_7

    :cond_e
    nop

    :goto_7
    invoke-static {v1, v7, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "motion_pick_up_to_call_out"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_f

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mOneHandOperation:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    if-ne v0, v2, :cond_14

    const/4 v1, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v4, v3, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v4, v2, :cond_10

    const/4 v1, 0x0

    :cond_10
    if-nez v1, :cond_12

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mOneHandOperation:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "any_screen_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_11

    move v4, v2

    goto :goto_8

    :cond_11
    move v4, v6

    :goto_8
    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12102e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return v6

    :cond_12
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->isReadyOneHandedOperationStatusEnable()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->makeOneHandOperationDisablePopup()V

    goto :goto_9

    :cond_13
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->setOneHandOperation(I)V

    :goto_9
    goto/16 :goto_f

    :cond_14
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->setOneHandOperation(I)V

    goto/16 :goto_f

    :cond_15
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mFingerSensorGesture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "fingerprint_gesture_quick"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_16

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_16
    sget-object v4, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->isSupportSpay(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_17

    const v4, 0x7f12099b

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_17
    const v4, 0x7f12099c

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_a
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mFingerSensorGesture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mFingerSensorGesture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mFingerSensorGesture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :cond_18
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    if-ne v0, v2, :cond_19

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->maketurnOffUniversalPopup()V

    goto/16 :goto_f

    :cond_19
    if-ne v0, v2, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->makeTalkBackDisablePopup()V

    goto/16 :goto_f

    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v8, "surface_palm_swipe"

    invoke-static {v1, v8, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1b

    goto :goto_b

    :cond_1b
    const v7, 0x7f1219a9

    :goto_b
    invoke-virtual {v1, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getMetricsCategory()I

    move-result v1

    const/16 v7, 0x1112

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1c

    move-wide v3, v5

    goto :goto_c

    :cond_1c
    nop

    :goto_c
    invoke-static {v1, v7, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_f

    :cond_1d
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSwipeToCallorSendMessages:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v8, "swipe_to_call_message"

    invoke-static {v1, v8, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSwipeToCallorSendMessages:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSwipeToCallorSendMessages:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSwipeToCallorSendMessages:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_d

    :cond_1e
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSwipeToCallorSendMessages:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    sget-object v7, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getSwipeToCallSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getMetricsCategory()I

    move-result v1

    const/16 v7, 0x1dec

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1f

    move-wide v3, v5

    goto :goto_e

    :cond_1f
    nop

    :goto_e
    invoke-static {v1, v7, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_20
    :goto_f
    return v2
.end method

.method public onResume()V
    .locals 10

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "false"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isScreenCaptureEnabled"

    invoke-static {v3, v4, v5, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    if-eq v3, v4, :cond_0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDoubleTapToWakeUp:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tab_to_wake_up"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDoubleTapToWakeUp:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mLiftToWake:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lift_to_wake"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mLiftToWake:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartStay:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v5, 0x7f1219b4

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "intelligent_sleep_mode"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    goto :goto_2

    :cond_6
    move v3, v0

    :goto_2
    sget-object v6, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_8

    sget-object v6, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_7
    move v6, v0

    goto :goto_4

    :cond_8
    :goto_3
    move v6, v4

    :goto_4
    if-eqz v6, :cond_9

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartStay:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    const/4 v3, 0x0

    :cond_9
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartStay:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartStay:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartStay:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v3, :cond_a

    move v8, v5

    goto :goto_5

    :cond_a
    const v8, 0x7f121865

    :goto_5
    invoke-virtual {v7, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "intelligent_sleep_mode"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v4, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_b
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v3, :cond_11

    const v3, 0x7f12107c

    const v6, 0x7f12107d

    if-ne v2, v4, :cond_d

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    sget-object v7, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSamsungMessageAppEnable(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_8

    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v6, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_8

    :cond_d
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "motion_pick_up"

    invoke-static {v7, v8, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_e

    move v7, v4

    goto :goto_6

    :cond_e
    move v7, v0

    :goto_6
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v7, :cond_f

    move v3, v5

    goto :goto_7

    :cond_f
    sget-object v9, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isSamsungMessageAppEnable(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_10

    nop

    move v3, v6

    goto :goto_7

    :cond_10
    nop

    :goto_7
    invoke-virtual {v8, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    :goto_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "motion_pick_up"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlertObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_11
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMute:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v3, :cond_15

    if-ne v2, v4, :cond_12

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMute:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMute:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMute:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMute:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getSummaryForMutePauseSwitch()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_b

    :cond_12
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMute:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "motion_merged_mute_pause"

    invoke-static {v3, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_13

    move v3, v4

    goto :goto_9

    :cond_13
    move v3, v0

    :goto_9
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMute:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v6, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMute:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v6, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMute:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v3, :cond_14

    move v7, v5

    goto :goto_a

    :cond_14
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getSummaryForMutePauseSwitch()I

    move-result v7

    :goto_a
    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    :goto_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "motion_merged_mute_pause"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMuteObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_15
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCall:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v3, :cond_19

    const v3, 0x7f121081

    if-ne v2, v4, :cond_16

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCall:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCall:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCall:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCall:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v6, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_e

    :cond_16
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCall:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v6, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "motion_pick_up_to_call_out"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_17

    move v6, v4

    goto :goto_c

    :cond_17
    move v6, v0

    :goto_c
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCall:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCall:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCall:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v6, :cond_18

    move v3, v5

    goto :goto_d

    :cond_18
    nop

    :goto_d
    invoke-virtual {v7, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    :goto_e
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "motion_pick_up_to_call_out"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_19
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mOneHandOperation:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v3, :cond_1a

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->updateOneHandOperationPreference()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "any_screen_enabled"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1a
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mFingerSensorGesture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v3, :cond_1e

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "fingerprint_gesture_quick"

    invoke-static {v3, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1b

    move v3, v4

    goto :goto_f

    :cond_1b
    move v3, v0

    :goto_f
    const-string v6, ""

    if-eqz v3, :cond_1c

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_10

    :cond_1c
    sget-object v7, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->isSupportSpay(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1d

    const v7, 0x7f12099b

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_10

    :cond_1d
    const v7, 0x7f12099c

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_10
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mFingerSensorGesture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mFingerSensorGesture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mFingerSensorGesture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "fingerprint_gesture_quick"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mFingerSensorGestureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v4, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1e
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v3, :cond_22

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const v6, 0x7f1219a9

    if-eqz v3, :cond_1f

    const-string v3, "MotionAndGestureSettings"

    const-string v7, "MDM: Screen Capture Disabled"

    invoke-static {v3, v7}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_13

    :cond_1f
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "surface_palm_swipe"

    invoke-static {v3, v7, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_20

    move v3, v4

    goto :goto_11

    :cond_20
    move v3, v0

    :goto_11
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v3, :cond_21

    move v8, v5

    goto :goto_12

    :cond_21
    nop

    move v8, v6

    :goto_12
    invoke-virtual {v7, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    :goto_13
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "surface_palm_swipe"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v7, v4, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v3, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v7, v3, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v7, v4, :cond_22

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    :cond_22
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSwipeToCallorSendMessages:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v3, :cond_25

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "swipe_to_call_message"

    invoke-static {v3, v6, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_23

    move v0, v4

    nop

    :cond_23
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSwipeToCallorSendMessages:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSwipeToCallorSendMessages:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v0, :cond_24

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSwipeToCallorSendMessages:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_14

    :cond_24
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSwipeToCallorSendMessages:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    sget-object v5, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getSwipeToCallSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_14
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "swipe_to_call_message"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSwipeToCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_25
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mSmartAlert:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mEasyMute:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mDirectCall:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mPalmSwipeToCapture:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_27

    :cond_26
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "access_control_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mInteractionControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_27
    return-void
.end method
