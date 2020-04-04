.class public Lcom/android/systemui/statusbar/policy/Clock;
.super Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;
.source "Clock.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/Clock$KeyguardServiceBoxCallback;,
        Lcom/android/systemui/statusbar/policy/Clock$LeoObserver;
    }
.end annotation


# static fields
.field public static final mStyleableClock:[I


# instance fields
.field private autoHideHandler:Landroid/os/Handler;

.field private mAmPmStyle:I

.field protected mAttached:Z

.field protected mCalendar:Ljava/util/Calendar;

.field private mChinaDetails:Z

.field private mChinaDetailsSting:Ljava/lang/String;

.field private mChinaDetailsStyle:I

.field private mChinaDetailssymbolSting:Ljava/lang/String;

.field private mChinaDetailssymbolStyle:I

.field private mChinaLunarMonthStyle:I

.field private mClockAutoHide:Z

.field protected mClockDateDisplay:I

.field protected mClockDateFormat:Ljava/lang/String;

.field protected mClockDatePosition:I

.field protected mClockDateStyle:I

.field public mClockDateWeekPosition:I

.field public mClockDateWeekStyle:I

.field public mClockDetailsPosition:I

.field private mClockFontStyle:I

.field protected mClockFormat:Ljava/text/SimpleDateFormat;

.field protected mClockFormatString:Ljava/lang/String;

.field private mClockSize:I

.field protected mClockVisibleByPolicy:Z

.field protected mClockVisibleByUser:Z

.field private mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

.field private mCurrentUserId:I

.field private final mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private mDatesymbolSting:Ljava/lang/String;

.field private mDatesymbolStyle:I

.field private mDemoMode:Z

.field private mHandler:Landroid/os/Handler;

.field private mHideDuration:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs12:Z

.field private mKeyguardServiceBoxCallback:Lcom/android/systemui/statusbar/policy/Clock$KeyguardServiceBoxCallback;

.field public mKeyguardStatusbarClock:Ljava/lang/String;

.field private mLeoIntent:Landroid/content/Intent;

.field private mLeoObserver:Lcom/android/systemui/statusbar/policy/Clock$LeoObserver;

.field protected mLocale:Ljava/util/Locale;

.field private mScreenOn:Z

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private final mSecondTick:Ljava/lang/Runnable;

.field private mSecondsHandler:Landroid/os/Handler;

.field protected mShowClock:Z

.field private final mShowDark:Z

.field protected mShowDateWeek:Z

.field private mShowDuration:I

.field private mShowSeconds:Z

.field public mSingleLine:Z

.field public mStatusbarClock:Ljava/lang/String;

.field private mUseWallpaperTextColor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/R$styleable;->Clock:[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/Clock;->mStyleableClock:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByPolicy:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByUser:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mScreenOn:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->autoHideHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateDisplay:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateStyle:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateFormat:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowClock:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDateWeek:Z

    const/16 v2, 0xe

    iput v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockSize:I

    const/16 v2, 0x3c

    iput v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHideDuration:I

    const/4 v2, 0x5

    iput v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDuration:I

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/policy/Clock$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/Clock$2;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/systemui/statusbar/policy/Clock$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/Clock$3;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/systemui/statusbar/policy/Clock$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/Clock$4;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondTick:Ljava/lang/Runnable;

    const-string v2, "leo_status_bar_clock"

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mStatusbarClock:Ljava/lang/String;

    const-string v2, "leo_keyguard_status_bar_clock"

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mKeyguardStatusbarClock:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mStatusbarClock:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/Clock;->mStyleableClock:[I

    invoke-virtual {v2, p2, v3, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    const-string v2, "styleable/Clock_amPmStyle"

    invoke-static {v2}, Lcom/fusionleo/LeoProvider/LeoManages;->getLeoUIResource(Ljava/lang/String;)I

    move-result v2

    const-string v3, "styleable/AM_PM_STYLE_GONE"

    invoke-static {v3}, Lcom/fusionleo/LeoProvider/LeoManages;->getLeoUIResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDark:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mNonAdaptedColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    nop

    new-instance v0, Lcom/android/systemui/statusbar/policy/Clock$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/Clock$1;-><init>(Lcom/android/systemui/statusbar/policy/Clock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateSettings()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/Clock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockFontStyle()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/Clock;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/Clock;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/Clock;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/Clock;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockAutoHide:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->autoHideHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/Clock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateStatus()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondTick:Ljava/lang/Runnable;

    return-object v0
.end method

.method private autoHideClock()V
    .locals 4

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->autoHideHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$MjLf4O5CrwaevoZr_nDQtgij-MY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$MjLf4O5CrwaevoZr_nDQtgij-MY;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iget v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHideDuration:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 27

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-boolean v9, v7, Lcom/android/systemui/statusbar/policy/Clock;->mIs12:Z

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v10

    const v11, 0xef00

    const v12, 0xef01

    iget-boolean v0, v7, Lcom/android/systemui/statusbar/policy/Clock;->mShowSeconds:Z

    if-eqz v0, :cond_1

    if-eqz v9, :cond_0

    iget-object v0, v10, Llibcore/icu/LocaleData;->timeFormat_Hms:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, v10, Llibcore/icu/LocaleData;->timeFormat_hms:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz v9, :cond_2

    iget-object v0, v10, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, v10, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    :goto_0
    iget-object v1, v7, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v13, 0xef01

    const v14, 0xef00

    const/4 v15, 0x0

    const/4 v6, 0x2

    if-nez v1, :cond_9

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, v7, Lcom/android/systemui/statusbar/policy/Clock;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    const-string v1, "FusionLeo Team\nWhat are you looking for? Need help? leo@leorom.cc"

    iget v2, v7, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    if-eq v2, v6, :cond_8

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x27

    if-ne v5, v6, :cond_4

    if-nez v3, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    move v3, v6

    :cond_4
    if-nez v3, :cond_5

    const/16 v6, 0x61

    if-ne v5, v6, :cond_5

    move v2, v4

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x2

    goto :goto_1

    :cond_6
    :goto_3
    if-ltz v2, :cond_8

    move v4, v2

    :goto_4
    if-lez v2, :cond_7

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_7

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    iput-object v2, v7, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v6, v3

    goto :goto_5

    :cond_9
    iget-object v3, v7, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v18, v0

    move-object v6, v3

    :goto_5
    const/16 v19, 0x0

    iget v0, v7, Lcom/android/systemui/statusbar/policy/Clock;->mChinaLunarMonthStyle:I

    iget-boolean v1, v7, Lcom/android/systemui/statusbar/policy/Clock;->mChinaDetails:Z

    iget v2, v7, Lcom/android/systemui/statusbar/policy/Clock;->mChinaDetailsStyle:I

    iget-object v3, v7, Lcom/android/systemui/statusbar/policy/Clock;->mChinaDetailsSting:Ljava/lang/String;

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/Clock;->getLeoTimeStyle(IZILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v20, ""

    iget-object v0, v7, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    const-string v21, ""

    iget v1, v7, Lcom/android/systemui/statusbar/policy/Clock;->mChinaDetailssymbolStyle:I

    iget-object v2, v7, Lcom/android/systemui/statusbar/policy/Clock;->mChinaDetailssymbolSting:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->LeoSaltSymbolStyle(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v1, v7, Lcom/android/systemui/statusbar/policy/Clock;->mClockDetailsPosition:I

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v1

    move-object/from16 v2, v22

    iget v0, v7, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateDisplay:I

    if-eqz v0, :cond_e

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    move-object v1, v0

    iget v0, v7, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateWeekPosition:I

    iget-boolean v13, v7, Lcom/android/systemui/statusbar/policy/Clock;->mShowDateWeek:Z

    iget v14, v7, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateWeekStyle:I

    iget v15, v7, Lcom/android/systemui/statusbar/policy/Clock;->mDatesymbolStyle:I

    move-object/from16 v23, v5

    iget-object v5, v7, Lcom/android/systemui/statusbar/policy/Clock;->mDatesymbolSting:Ljava/lang/String;

    move-object/from16 v24, v6

    iget-object v6, v7, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateFormat:Ljava/lang/String;

    move/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v26, v8

    move-object v8, v1

    move/from16 v1, v25

    move/from16 v25, v9

    move-object v9, v2

    move v2, v13

    move-object v13, v3

    move v3, v14

    move-object v14, v4

    move v4, v15

    move-object/from16 v16, v10

    move-object/from16 v15, v23

    const/4 v10, 0x1

    move-object/from16 v17, v24

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/Clock;->getLeoDateStyle(IZIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v19

    iget v1, v7, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateStyle:I

    if-ne v1, v10, :cond_b

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    goto :goto_7

    :cond_b
    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_c
    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7
    iget v3, v7, Lcom/android/systemui/statusbar/policy/Clock;->mClockDatePosition:I

    const-string v4, "\n"

    if-nez v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_9

    :cond_e
    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v17, v6

    move-object/from16 v26, v8

    move/from16 v25, v9

    move-object/from16 v16, v10

    const/4 v10, 0x1

    move-object v9, v2

    const/4 v2, 0x2

    move-object v0, v9

    move-object/from16 v1, v21

    :goto_9
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget v4, v7, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateDisplay:I

    const/16 v5, 0x22

    const v6, 0x3f333333    # 0.7f

    if-eq v4, v2, :cond_11

    if-eqz v19, :cond_11

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget v8, v7, Lcom/android/systemui/statusbar/policy/Clock;->mClockDatePosition:I

    if-ne v8, v10, :cond_f

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v10

    goto :goto_a

    :cond_f
    const/4 v8, 0x0

    :goto_a
    iget v2, v7, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateDisplay:I

    if-nez v2, :cond_10

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_b

    :cond_10
    if-ne v2, v10, :cond_11

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v2, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int v6, v8, v4

    invoke-virtual {v3, v2, v8, v6, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_11
    :goto_b
    iget v2, v7, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_14

    const v2, 0xef00

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const v4, 0xef01

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v2, :cond_14

    if-le v4, v2, :cond_14

    iget v6, v7, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    if-nez v6, :cond_12

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v2, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_c

    :cond_12
    if-ne v6, v10, :cond_13

    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    const v8, 0x3f333333    # 0.7f

    invoke-direct {v6, v8}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3, v6, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_13
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v2, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_14
    :goto_c
    return-object v3
.end method

.method private updateClockFontStyle()V
    .locals 3

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockFont:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFontStyle:I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFontStyle:I

    const-string v1, "sec-roboto-light"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setLeoTextFont(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    return-void
.end method

.method private updateClockOnClick()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setClickable(Z)V

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/Clock;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateShowSeconds()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowSeconds:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondTick:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    mul-long v2, v2, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateStatus()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateShowSeconds()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockColor()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockSize()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockFontStyle()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockOnClick()V

    :cond_0
    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 2

    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByPolicy:Z

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibilityByPolicy(Z)V

    :cond_1
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-nez v0, :cond_0

    const-string v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    goto :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-eqz v0, :cond_5

    const-string v0, "clock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "millis"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "hhmm"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIs12:Z

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v1}, Ljava/util/Calendar;->set(II)V

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6, v3}, Ljava/util/Calendar;->set(II)V

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public isClockDateEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->isClockVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateDisplay:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClockVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByPolicy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$autoHideClock$1$Clock()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockVisibility()V

    return-void
.end method

.method public synthetic lambda$updateClockVisibility$0$Clock()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->autoHideClock()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    sget-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Handler;

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDark:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserId:I

    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mLeoObserver:Lcom/android/systemui/statusbar/policy/Clock$LeoObserver;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/systemui/statusbar/policy/Clock$LeoObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/Clock$LeoObserver;-><init>(Lcom/android/systemui/statusbar/policy/Clock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mLeoObserver:Lcom/android/systemui/statusbar/policy/Clock$LeoObserver;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mLeoObserver:Lcom/android/systemui/statusbar/policy/Clock$LeoObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/Clock$LeoObserver;->observe()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateStatus()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mLeoIntent:Landroid/content/Intent;

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockOnClick:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarClock:[Ljava/lang/String;

    const/16 v1, 0x1e

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mLeoIntent:Landroid/content/Intent;

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockOnLong:I

    invoke-static {v1, v2, v3, v0}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->LeoSysUiShortcut(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockVibratorEnable:I

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockVibratorLevel:I

    invoke-static {v1, v2, v3}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoHaptics(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mKeyguardStatusbarClock:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mStatusbarClock:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mNonAdaptedColor:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->mDarkModeFillColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mNonAdaptedColor:I

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->setClockLightColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->setClockDarkColor()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->getColorForDarkIntensity(FII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mNonAdaptedColor:I

    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mUseWallpaperTextColor:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mNonAdaptedColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockColor()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDark:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    if-eqz p1, :cond_3

    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "clock_super_parcelable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v2, "current_user_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserId:I

    :cond_1
    const/4 v2, 0x1

    const-string v3, "visible_by_policy"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByPolicy:Z

    const-string v3, "visible_by_user"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByUser:Z

    const/4 v2, 0x0

    const-string v3, "show_seconds"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowSeconds:Z

    const-string v2, "visibility"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-super {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "clock_super_parcelable"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserId:I

    const-string v2, "current_user_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByPolicy:Z

    const-string v2, "visible_by_policy"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByUser:Z

    const-string v2, "visible_by_user"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowSeconds:Z

    const-string v2, "show_seconds"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getVisibility()I

    move-result v1

    const-string v2, "visibility"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-super {p0, p1}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockOnClick:Z

    if-eqz v0, :cond_1

    const v0, -0x7f7c9001

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setBackgroundColor(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->isMoving:Z

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->isMoving:Z

    if-nez v0, :cond_3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->isMoving:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->startY:F

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->startY:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x42700000    # 60.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->expandStatusBar(Landroid/content/Context;)V

    :cond_4
    :goto_1
    return v3
.end method

.method public setCallback(Lcom/android/systemui/statusbar/policy/Clock$KeyguardServiceBoxCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mKeyguardServiceBoxCallback:Lcom/android/systemui/statusbar/policy/Clock$KeyguardServiceBoxCallback;

    return-void
.end method

.method public setClockDarkColor()I
    .locals 2

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockCustomDarkColorEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarDarkClockColor:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->mDarkModeFillColor:I

    :goto_0
    return v0
.end method

.method public setClockLightColor()I
    .locals 2

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockCustomColorEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockColor:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLightModeFillColor:I

    :goto_0
    return v0
.end method

.method public setClockVisibilityByPolicy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByPolicy:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockVisibility()V

    return-void
.end method

.method public setClockVisibleByUser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByUser:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockVisibility()V

    return-void
.end method

.method final updateClock()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mKeyguardServiceBoxCallback:Lcom/android/systemui/statusbar/policy/Clock$KeyguardServiceBoxCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mKeyguardServiceBoxCallback:Lcom/android/systemui/statusbar/policy/Clock$KeyguardServiceBoxCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/Clock$KeyguardServiceBoxCallback;->onTimeTextChanged()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public updateClockColor()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mKeyguardStatusbarClock:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mStatusbarClock:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mNonAdaptedColor:I

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->mDarkModeFillColor:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->setClockDarkColor()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->setClockLightColor()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method public updateClockSize()V
    .locals 2

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockSingleLine:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSingleLine:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSingleLine:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockSingleSize:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setGravity(I)V

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockMultiSize:I

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSingleLine:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setSingleLine(Z)V

    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockSize:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockSize:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setLeoTextSize(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    return-void
.end method

.method protected updateClockVisibility()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowClock:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByPolicy:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByUser:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-class v2, Lcom/android/systemui/statusbar/policy/IconLogger;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/IconLogger;

    const-string v3, "clock"

    invoke-interface {v2, v3, v0}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconVisibility(Ljava/lang/String;Z)V

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->autoHideHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockAutoHide:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mScreenOn:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->autoHideHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$_GE4AUpWt3SBAYoyghIMMfYclcs;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$_GE4AUpWt3SBAYoyghIMMfYclcs;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iget v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDuration:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method protected updateSettings()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClock12Format:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIs12:Z

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockShow:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowClock:Z

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockShowSeconds:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowSeconds:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIs12:Z

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->isChineseLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockChinaDetailSymbol:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mChinaDetailssymbolStyle:I

    sget-boolean v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockChinaDetail:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mChinaDetails:Z

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mChinaDetailssymbolStyle:I

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockAMPMStyle:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    :goto_1
    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockWeekSymbol:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDatesymbolStyle:I

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockWeekSymbolStr:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDatesymbolSting:Ljava/lang/String;

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockChinaDetailStyle:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mChinaDetailsStyle:I

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockChinaDetailStr:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mChinaDetailsSting:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockDateShow:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateDisplay:I

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockDateStyle:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateStyle:I

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockDateFormat:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateFormat:Ljava/lang/String;

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockDatePosition:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockDatePosition:I

    sget-boolean v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockWeekShow:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDateWeek:Z

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockWeekOrientation:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateWeekPosition:I

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockWeekStyle:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateWeekStyle:I

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockChinaOrientation:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockDetailsPosition:I

    sget-boolean v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockAutoHide:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockAutoHide:Z

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockHideDuration:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHideDuration:I

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockShowDuration:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDuration:I

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockStartPadding:F

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockEndPadding:F

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setLeoTextPadding(FF)V

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockChinaDetailSymbolStr:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mChinaDetailssymbolSting:Ljava/lang/String;

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockLunarMonthStyle:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mChinaLunarMonthStyle:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockVisibility()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateShowSeconds()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockOnClick()V

    :cond_2
    return-void
.end method

.method public useWallpaperTextColor(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mUseWallpaperTextColor:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mUseWallpaperTextColor:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mUseWallpaperTextColor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    const-string v1, "attr/wallpaperTextColor"

    invoke-static {v1}, Lcom/fusionleo/LeoProvider/LeoManages;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mNonAdaptedColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method
