.class public Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;
.super Landroid/widget/RelativeLayout;
.source "SecZenScheduleRepeatButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;,
        Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$RepeatListener;,
        Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$InterpolatorStyle;
    }
.end annotation


# static fields
.field public static final REPEAT_DAYS:[I

.field public static final VALUES_DAYS:[I

.field private static sRepeatSelectItems:Landroid/util/SparseBooleanArray;


# instance fields
.field private final BUTTON_CNT:I

.field private final LEFT_DRAG:I

.field private final RIGHT_DRAG:I

.field public mAlarmRepeatString:Ljava/lang/String;

.field private final mCheckedRepeatItems:[Z

.field private final mColorSet:[I

.field private mColorValues:[I

.field private mContext:Landroid/content/Context;

.field private mDragState:I

.field private mEndValue:F

.field public mIsDateSelected:Z

.field public mIsDragging:Z

.field private mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

.field private mRepeatBtn:[Landroid/widget/ToggleButton;

.field private mRepeatClickListener:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$RepeatListener;

.field private mRepeatTextView:Landroid/view/View;

.field private mStartValue:F

.field private mTouchIndex:I

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->VALUES_DAYS:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->REPEAT_DAYS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x1000000
        0x100000
        0x10000
        0x1000
        0x100
        0x10
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->BUTTON_CNT:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mIsDateSelected:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mTouchIndex:I

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mColorSet:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mColorValues:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mStartValue:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mEndValue:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->RIGHT_DRAG:I

    iput v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->LEFT_DRAG:I

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->init(Landroid/content/Context;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0601de
        0x7f0601dc
        0x7f0601dd
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->BUTTON_CNT:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mIsDateSelected:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mTouchIndex:I

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mColorSet:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mColorValues:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mStartValue:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mEndValue:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->RIGHT_DRAG:I

    iput v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->LEFT_DRAG:I

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->init(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 4
        0x7f0601de
        0x7f0601dc
        0x7f0601dd
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->BUTTON_CNT:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mIsDateSelected:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mTouchIndex:I

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mColorSet:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mColorValues:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mStartValue:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mEndValue:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->RIGHT_DRAG:I

    iput v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->LEFT_DRAG:I

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->init(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 4
        0x7f0601de
        0x7f0601dc
        0x7f0601dd
    .end array-data
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->clickRepeatButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mStartValue:F

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mEndValue:F

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatTextView:Landroid/view/View;

    return-object v0
.end method

.method private clickRepeatButton()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mIsDateSelected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mIsDateSelected:Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getCheckDay()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->setCheckDayWithAnimation(IZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatClickListener:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$RepeatListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatClickListener:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$RepeatListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$RepeatListener;->setRepeatClick(I)V

    goto :goto_0

    :cond_1
    const-string v1, "ZenScheduleRepeatButton"

    const-string v2, "mRepeatClickListener is null. not able to click Repeat button."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static getColor(C[I)I
    .locals 1

    const/16 v0, 0x52

    if-ne p0, v0, :cond_0

    const/4 v0, 0x2

    aget v0, p1, v0

    return v0

    :cond_0
    const/16 v0, 0x42

    if-ne p0, v0, :cond_1

    const/4 v0, 0x1

    aget v0, p1, v0

    return v0

    :cond_1
    const/4 v0, 0x0

    aget v0, p1, v0

    return v0
.end method

.method public static getColors([II)[I
    .locals 7

    const/4 v0, 0x7

    const-string v1, "XXXXXXR"

    :try_start_0
    const-string v2, "CscFeature_Calendar_SetColorOfDays"

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getCscString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    const-string v4, "ZenScheduleRepeatButton"

    const-string v5, "NullPointerException - getCscString"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    :goto_0
    const/4 v3, 0x7

    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v3, :cond_1

    :cond_0
    const-string v2, "XXXXXXR"

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz p0, :cond_2

    array-length v6, p0

    if-eq v6, v5, :cond_3

    :cond_2
    new-array p0, v5, [I

    const/high16 v5, -0x1000000

    aput v5, p0, v4

    const v5, -0xffff01

    const/4 v6, 0x1

    aput v5, p0, v6

    const/4 v5, 0x2

    const/high16 v6, -0x10000

    aput v6, p0, v5

    :cond_3
    new-array v5, v3, [I

    nop

    :goto_1
    if-ge v4, v3, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getColor(C[I)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getRotateOffset(I)I

    move-result v3

    invoke-static {v5, v3}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->rotate([II)[I

    move-result-object v4

    return-object v4
.end method

.method private static getCscEnableStatus(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "ZenScheduleRepeatButton"

    const-string v2, "NullPointerException occurs"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private static getCscString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDayOfWeekString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    const-string v1, "ZenScheduleRepeatButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1. day value is invalid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121404

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1213fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121411

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121415

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121413

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1213fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12140f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    packed-switch p1, :pswitch_data_1

    const-string v1, "ZenScheduleRepeatButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1. day value is invalid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121403

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1213fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121410

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121414

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121412

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1213fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12140e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    :cond_2
    :goto_1
    return-object v0

    nop

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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public static getInterpolatorStyle(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$InterpolatorStyle;)Landroid/view/animation/Interpolator;
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$5;->$SwitchMap$com$samsung$android$settings$notification$SecZenScheduleRepeatButton$InterpolatorStyle:[I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$InterpolatorStyle;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const v5, 0x3ea8f5c3    # 0.33f

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v5, v4, v1, v3}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {v5, v4, v2, v3}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v1, 0x3e2e147b    # 0.17f

    invoke-static {v1, v1, v2, v3}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v5, v4, v1, v3}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const v1, 0x3f2b851f    # 0.67f

    invoke-static {v5, v4, v1, v3}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const v1, 0x3f547ae1    # 0.83f

    invoke-static {v5, v4, v1, v1}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    nop

    :goto_0
    return-object v0

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

.method private static getRotateOffset(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x3

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_3
    const/4 v0, 0x5

    return v0

    :pswitch_4
    const/4 v0, 0x6

    return v0

    :pswitch_5
    return v0

    :pswitch_6
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getStartDayOfWeek()I
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method private inflateRepeatBtn()V
    .locals 15

    const/4 v0, 0x7

    new-array v1, v0, [Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    new-array v1, v0, [Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    const v1, 0x7f0a0662

    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    new-instance v5, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;-><init>(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;Landroid/content/Context;)V

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setRepeatToggleButton(Landroid/view/View;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setMinimumWidth(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setMinimumHeight(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v4, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    aput-boolean v2, v4, v1

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v4, v4, v1

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getStartDayOfWeek()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->isMirroringEnabled()Z

    move-result v4

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    new-array v6, v0, [I

    fill-array-data v6, :array_1

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mColorSet:[I

    invoke-static {v7, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getColors([II)[I

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mColorValues:[I

    move v7, v2

    :goto_1
    if-ge v7, v0, :cond_2

    if-eqz v4, :cond_1

    const-string v8, "ZenScheduleRepeatButton"

    const-string v9, "isMirroringEnabled : true"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v8, v1, 0x6

    sub-int/2addr v8, v7

    rem-int/2addr v8, v0

    goto :goto_2

    :cond_1
    add-int v8, v1, v7

    rem-int/2addr v8, v0

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    aget v10, v5, v8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :try_start_0
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v11, v11, v7

    iget-object v12, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mColorValues:[I

    aget v13, v13, v7

    invoke-virtual {v12, v13}, Landroid/content/Context;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/ToggleButton;->setTextColor(I)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v11, v11, v7

    invoke-virtual {v11, v10}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v11, v11, v7

    invoke-virtual {v11, v10}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v11, v11, v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    aget v13, v6, v8

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v12, v12, v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0705e4

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    int-to-float v13, v13

    const v14, 0x3f99999a    # 1.2f

    invoke-static {v11, v12, v13, v14}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->setTextSize(Landroid/content/Context;Landroid/widget/TextView;FF)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v10

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    nop

    :goto_4
    if-ge v2, v0, :cond_3

    move v7, v2

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v8, v8, v2

    new-instance v9, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$1;

    invoke-direct {v9, p0, v7}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$1;-><init>(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;I)V

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x7f12140e
        0x7f1213fd
        0x7f121412
        0x7f121414
        0x7f121410
        0x7f1213fa
        0x7f121403
    .end array-data

    :array_1
    .array-data 4
        0x7f12140f
        0x7f1213fe
        0x7f121413
        0x7f121415
        0x7f121411
        0x7f1213fb
        0x7f121404
    .end array-data
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->setWillNotDraw(Z)V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0d02da

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->inflateRepeatBtn()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    const v0, 0x7f0a066b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatTextView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatTextView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f99999a    # 1.2f

    invoke-static {v0, v2, v3, v4}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->setTextSize(Landroid/content/Context;Landroid/widget/TextView;FF)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->invalidate()V

    return-void
.end method

.method public static isMirroringEnabled()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "CscFeature_Common_EnableUiDisplayMirroring"

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getCscEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "iw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "he"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isRtl()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static rotate([II)[I
    .locals 5

    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int v3, v2, p1

    rem-int/2addr v3, v0

    aget v4, p0, v2

    aput v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private setCheckDayWithAnimation(IZ)V
    .locals 9

    sget-object v0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->REPEAT_DAYS:[I

    invoke-static {}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getStartDayOfWeek()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x7

    if-ge v4, v5, :cond_1

    add-int v6, v1, v4

    rem-int/2addr v6, v5

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    aget v7, v0, v6

    and-int/2addr v7, p1

    aget v8, v0, v6

    if-ne v7, v8, :cond_0

    move v7, v2

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    aput-boolean v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    if-eqz v4, :cond_6

    move v4, v3

    :goto_2
    if-ge v4, v5, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    aget-boolean v6, v6, v4

    if-eqz v6, :cond_3

    sget-object v6, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v6, v6, v4

    invoke-virtual {v6, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v6, v6, v4

    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v6, v6, v4

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    const v8, 0x7f0601df

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setTextColor(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ko"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v6, v6, v4

    const-string v7, "sans-serif"

    invoke-static {v7, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v6, v6, v4

    const-string v7, "sans-serif-medium"

    invoke-static {v7, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3

    :cond_3
    sget-object v6, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v6, v6, v4

    invoke-virtual {v6, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    if-nez p2, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v6, v6, v4

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v6, v6, v4

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mColorValues:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setTextColor(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v6, v6, v4

    const-string v7, "sans-serif"

    invoke-static {v7, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->setRepeatText()V

    :cond_6
    return-void
.end method

.method private setRepeatText()V
    .locals 10

    sget-object v0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mAlarmRepeatString:Ljava/lang/String;

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getStartDayOfWeek()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x7

    if-ge v5, v6, :cond_6

    sget-object v7, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_5

    if-lez v1, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ar"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "\u060c "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "\u3001"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int v7, v3, v5

    rem-int/2addr v7, v6

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    add-int v8, v4, v7

    const/4 v9, 0x2

    invoke-static {v6, v8, v9}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getDayOfWeekString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    const-string v4, "ZenScheduleRepeatButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRepeatSubText() - size = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", checkCnt = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_7

    const-string v4, ""

    iput-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mAlarmRepeatString:Ljava/lang/String;

    goto :goto_2

    :cond_7
    if-ne v1, v6, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1213f9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mAlarmRepeatString:Ljava/lang/String;

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mAlarmRepeatString:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method private static setTextSize(Landroid/content/Context;Landroid/widget/TextView;FF)V
    .locals 5

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    div-float v1, p2, v0

    const-string v2, "ZenScheduleRepeatButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLargeTextSize fontScale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v2, v0, p3

    if-lez v2, :cond_0

    move v0, p3

    :cond_0
    mul-float v2, v1, v0

    invoke-static {p1, v2}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->setTextSize(Landroid/widget/TextView;F)V

    :cond_1
    return-void
.end method

.method public static setTextSize(Landroid/widget/TextView;F)V
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    float-to-double v1, p1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZenScheduleRepeatButton"

    const-string v2, "Exception "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getWidth()I

    move-result v4

    mul-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    sub-int v5, v0, v3

    div-int/lit8 v6, v4, 0x7

    div-int/2addr v5, v6

    invoke-static {}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->isRtl()Z

    move-result v6

    if-eqz v6, :cond_1

    rsub-int/lit8 v5, v5, 0x6

    if-gtz v5, :cond_1

    const/4 v5, 0x0

    :cond_1
    const/4 v6, 0x7

    if-lt v5, v6, :cond_2

    const/4 v5, 0x6

    goto :goto_0

    :cond_2
    if-gez v5, :cond_3

    const/4 v5, 0x0

    :cond_3
    :goto_0
    const/4 v6, 0x0

    const/4 v7, -0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget v8, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mTouchIndex:I

    if-eq v8, v5, :cond_d

    iget v8, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mTouchIndex:I

    if-ge v8, v5, :cond_5

    iget v8, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mDragState:I

    if-ne v8, v7, :cond_4

    iput-boolean v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mIsDragging:Z

    :cond_4
    iput v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mDragState:I

    goto :goto_1

    :cond_5
    iget v8, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mTouchIndex:I

    if-le v8, v5, :cond_7

    iget v8, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mDragState:I

    if-ne v8, v1, :cond_6

    iput-boolean v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mIsDragging:Z

    :cond_6
    iput v7, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mDragState:I

    :cond_7
    :goto_1
    iget-boolean v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mIsDragging:Z

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    iget v8, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mTouchIndex:I

    aget-object v6, v6, v8

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->performClick()Z

    :cond_8
    iget v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mTouchIndex:I

    sub-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v1, :cond_a

    iget v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mDragState:I

    if-ne v6, v1, :cond_9

    iget v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mTouchIndex:I

    add-int/2addr v6, v1

    :goto_2
    if-ge v6, v5, :cond_a

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/widget/ToggleButton;->performClick()Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    iget v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mDragState:I

    if-ne v6, v7, :cond_a

    iget v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mTouchIndex:I

    sub-int/2addr v6, v1

    :goto_3
    if-le v6, v5, :cond_a

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/widget/ToggleButton;->performClick()Z

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->performClick()Z

    iput v5, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mTouchIndex:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mIsDragging:Z

    goto :goto_6

    :pswitch_1
    iget v8, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mTouchIndex:I

    sub-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v1, :cond_c

    iget v8, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mDragState:I

    if-ne v8, v1, :cond_b

    iget v7, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mTouchIndex:I

    add-int/2addr v7, v1

    :goto_4
    move v1, v7

    if-gt v1, v5, :cond_c

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/widget/ToggleButton;->performClick()Z

    add-int/lit8 v7, v1, 0x1

    goto :goto_4

    :cond_b
    iget v8, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mDragState:I

    if-ne v8, v7, :cond_c

    iget v7, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mTouchIndex:I

    sub-int/2addr v7, v1

    :goto_5
    move v1, v7

    if-lt v1, v5, :cond_c

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/widget/ToggleButton;->performClick()Z

    add-int/lit8 v7, v1, -0x1

    goto :goto_5

    :cond_c
    iput-boolean v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mIsDragging:Z

    iput v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mDragState:I

    goto :goto_6

    :pswitch_2
    iput-boolean v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mIsDragging:Z

    iput v5, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mTouchIndex:I

    nop

    :cond_d
    :goto_6
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCheckDay()I
    .locals 7

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->REPEAT_DAYS:[I

    invoke-static {}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getStartDayOfWeek()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->isMirroringEnabled()Z

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x7

    if-ge v4, v5, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v3, :cond_0

    add-int/lit8 v6, v2, 0x6

    sub-int/2addr v6, v4

    rem-int/2addr v6, v5

    goto :goto_1

    :cond_0
    add-int v6, v2, v4

    rem-int/2addr v6, v5

    :goto_1
    move v5, v6

    aget v6, v1, v5

    or-int/2addr v0, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public initRepeatBtn([I)V
    .locals 7

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->VALUES_DAYS:[I

    aget v4, p1, v2

    const/4 v5, 0x7

    add-int/2addr v4, v5

    invoke-static {}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getStartDayOfWeek()I

    move-result v6

    sub-int/2addr v4, v6

    rem-int/2addr v4, v5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    invoke-virtual {p0, v3, v5}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->setSelectionMarkAnimator(IZ)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->clickRepeatButton()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEnabledBtn(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->setEnabled(Z)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->setClickable(Z)V

    return-void
.end method

.method public setOnRepeatClickListener(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$RepeatListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mRepeatClickListener:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$RepeatListener;

    return-void
.end method

.method public setSelectionMarkAnimator(IZ)V
    .locals 8

    const-string v0, "ZenScheduleRepeatButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelectionMarkAnimator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , isShowAnim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12c

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    iput v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mStartValue:F

    iput v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mEndValue:F

    const/16 v0, 0xc8

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mStartValue:F

    iput v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mEndValue:F

    :goto_0
    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mStartValue:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mEndValue:F

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    int-to-long v6, v0

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$InterpolatorStyle;->SineInOut60:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$InterpolatorStyle;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getInterpolatorStyle(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$InterpolatorStyle;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$2;-><init>(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;IZ)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;-><init>(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v3, v1, [F

    iget v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mStartValue:F

    aput v6, v3, v4

    iget v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->mEndValue:F

    aput v6, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    int-to-long v6, v0

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v6, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$InterpolatorStyle;->SineInOut60:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$InterpolatorStyle;

    invoke-static {v6}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getInterpolatorStyle(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$InterpolatorStyle;)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$4;

    invoke-direct {v6, p0, p1, p2}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$4;-><init>(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;IZ)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
