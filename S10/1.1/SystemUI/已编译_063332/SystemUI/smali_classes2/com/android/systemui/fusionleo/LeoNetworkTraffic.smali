.class public Lcom/android/systemui/fusionleo/LeoNetworkTraffic;
.super Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;
.source "LeoNetworkTraffic.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# static fields
.field private static final KILOBIT:I = 0x3e8

.field private static final KILOBYTE:I = 0x400

.field public static final MASK_DOWN:I = 0x2

.field public static final MASK_UP:I = 0x1

.field private static decimalFormat:Ljava/text/DecimalFormat;


# instance fields
.field private GB:I

.field private KB:I

.field private MB:I

.field public drw:Landroid/graphics/drawable/Drawable;

.field private lastUpdateTime:J

.field protected mAttached:Z

.field private mAutoHide:Z

.field private mAutoHideThreshold:I

.field private mIconAdaptedColor:I

.field private mIconColor:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsArrowsStart:Z

.field private mRunnable:Ljava/lang/Runnable;

.field private mScreenOn:Z

.field private mShowArrows:Z

.field private mState:I

.field private mTextEnabled:Z

.field private mTrafficHandler:Landroid/os/Handler;

.field private mUseWallpaperTextColor:Z

.field private totalRxBytes:J

.field private totalTxBytes:J

.field private txtSizeMulti:I

.field private txtSizeSingle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    sget-object v0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    sget-object v0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mState:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->KB:I

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->KB:I

    mul-int v1, v0, v0

    iput v1, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->MB:I

    iget v1, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->MB:I

    mul-int v1, v1, v0

    iput v1, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->GB:I

    new-instance v0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;-><init>(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)V

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mScreenOn:Z

    new-instance v0, Lcom/android/systemui/fusionleo/-$$Lambda$LeoNetworkTraffic$AeVS89w6Caohse150_cyz4_F9Ww;

    invoke-direct {v0, p0}, Lcom/android/systemui/fusionleo/-$$Lambda$LeoNetworkTraffic$AeVS89w6Caohse150_cyz4_F9Ww;-><init>(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)V

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$2;-><init>(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)V

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "leo_statusbar_traffic_view"

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dimen"

    const-string v3, "net_traffic_single_text_size"

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->txtSizeSingle:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "net_traffic_multi_text_size"

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->txtSizeMulti:I

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->updateSettings()V

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setGravity(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->lastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->lastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->txtSizeMulti:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->txtSizeSingle:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/text/DecimalFormat;
    .locals 1

    sget-object v0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->MB:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->GB:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mAutoHide:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mAutoHideThreshold:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$200(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->getInterval(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->totalRxBytes:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->totalRxBytes:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->totalTxBytes:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->totalTxBytes:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->getConnectAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->clearHandlerCallbacks()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->KB:I

    return v0
.end method

.method static synthetic access$800(II)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->isSet(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mTextEnabled:Z

    return v0
.end method

.method private clearHandlerCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private getConnectAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private static getInterval(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x10

    const/16 v1, 0xfa

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fee

    if-gt v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x3e8

    :goto_0
    return v1
.end method

.method private static isSet(II)Z
    .locals 1

    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateTrafficDrawable()V
    .locals 5

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarNetworkShowArrowsStyle:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->getLeoNetworkIconStyle(I)V

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mShowArrows:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mState:I

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->UpDownIcom:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mState:I

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->UpIcom:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mState:I

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->DownIcom:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->LeoRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->drw:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->drw:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget v3, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mIconColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-boolean v2, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mIsArrowsStart:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->drw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v1, v1, v1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->drw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v1, v2, v1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_1
    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarNetworkArrowsPadding:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setCompoundDrawablePadding(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$LeoNetworkTraffic()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mAttached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "leo_statusbar_traffic_view"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setNetworkTrafficDrawableLightColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setNetworkTrafficDrawableDarkColor()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->getColorForDarkIntensity(FII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mIconAdaptedColor:I

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setNetworkTrafficLightColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setNetworkTrafficDarkColor()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->getColorForDarkIntensity(FII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mNonAdaptedColor:I

    goto :goto_0

    :cond_0
    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mNonAdaptedColor:I

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mIconColor:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->mDarkModeFillColor:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mNonAdaptedColor:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mIconColor:I

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mUseWallpaperTextColor:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mNonAdaptedColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setTextColor(I)V

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mIconAdaptedColor:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mIconColor:I

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->updateTrafficDrawable()V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mAttached:Z

    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public setNetworkTrafficDarkColor()I
    .locals 2

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarNetworkCustomDarkColorEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarNetworkDarkColor:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->mDarkModeFillColor:I

    :goto_0
    return v0
.end method

.method public setNetworkTrafficDrawableDarkColor()I
    .locals 2

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarNetworkCustomDarkColorEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarNetworkExtendsColor:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarNetworkDarkColor:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarNetworkIconDarkColor:I

    :goto_0
    goto :goto_1

    :cond_1
    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->mDarkModeFillColor:I

    :goto_1
    return v0
.end method

.method public setNetworkTrafficDrawableLightColor()I
    .locals 2

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarNetworkCustomColorEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarNetworkExtendsColor:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarNetworkColor:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarNetworkIconColor:I

    :goto_0
    goto :goto_1

    :cond_1
    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLightModeFillColor:I

    :goto_1
    return v0
.end method

.method public setNetworkTrafficLightColor()I
    .locals 2

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarNetworkCustomColorEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarNetworkColor:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLightModeFillColor:I

    :goto_0
    return v0
.end method

.method public updateClockColor()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "leo_statusbar_traffic_view"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mNonAdaptedColor:I

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->mDarkModeFillColor:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setNetworkTrafficDarkColor()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setNetworkTrafficLightColor()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setTextColor(I)V

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mIconAdaptedColor:I

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->mDarkModeFillColor:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setNetworkTrafficDrawableDarkColor()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setNetworkTrafficDrawableLightColor()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mIconColor:I

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->updateTrafficDrawable()V

    :cond_2
    return-void
.end method

.method public updateSettings()V
    .locals 5

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusbarNetworkAutoHideEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mAutoHide:Z

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarNetworkShowArrowsEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mShowArrows:Z

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarNetworkAutoHideThreshold:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mAutoHideThreshold:I

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarNetworkState:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mState:I

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarNetworkText:Z

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mTextEnabled:Z

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarNetworkFont:I

    const/4 v1, 0x1

    const-string v2, "roboto-regular"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setLeoTextFont(ILjava/lang/String;I)V

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarNetworkUnit:Z

    sget-boolean v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarNetworkSingle:Z

    invoke-virtual {p0, v2}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setSingleLine(Z)V

    sget-boolean v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarNetworkArrowsOrientation:Z

    iput-boolean v2, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mIsArrowsStart:Z

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarNetworkStartPadding:F

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarNetworkEndPadding:F

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setLeoTextPadding(FF)V

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarNetworkSize:F

    invoke-virtual {p0, v2}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setScaleX(F)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setScaleY(F)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->updateClockColor()V

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->updateTrafficDrawable()V

    if-eqz v0, :cond_0

    const/16 v3, 0x400

    iput v3, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->KB:I

    goto :goto_0

    :cond_0
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->KB:I

    :goto_0
    iget v3, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->KB:I

    mul-int v4, v3, v3

    iput v4, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->MB:I

    iget v4, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->MB:I

    mul-int v4, v4, v3

    iput v4, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->GB:I

    iget v3, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mState:I

    invoke-static {v3, v1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->isSet(II)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mState:I

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->clearHandlerCallbacks()V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->getConnectAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->totalRxBytes:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->lastUpdateTime:J

    iget-object v3, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->updateTrafficDrawable()V

    return-void

    :cond_3
    :goto_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setVisibility(I)V

    return-void
.end method

.method public useWallpaperTextColor(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mUseWallpaperTextColor:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mUseWallpaperTextColor:Z

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mUseWallpaperTextColor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mContext:Landroid/content/Context;

    const-string v1, "attr/wallpaperTextColor"

    invoke-static {v1}, Lcom/fusionleo/LeoProvider/LeoManages;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setTextColor(I)V

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mIconColor:I

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->updateTrafficDrawable()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mNonAdaptedColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setTextColor(I)V

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mIconAdaptedColor:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->mIconColor:I

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->updateTrafficDrawable()V

    :cond_1
    :goto_0
    return-void
.end method
