.class public Landroid/widget/TextClock;
.super Landroid/widget/TextView;
.source "TextClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextClock$FormatChangeObserver;
    }
.end annotation


# static fields
.field public static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mDescFormat:Ljava/lang/CharSequence;

.field private mDescFormat12:Ljava/lang/CharSequence;

.field private mDescFormat24:Ljava/lang/CharSequence;

.field private mFormat:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mFormat12:Ljava/lang/CharSequence;

.field private mFormat24:Ljava/lang/CharSequence;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mShouldChooseFormat:Z

.field private mShouldRunTicker:Z

.field private mShowCurrentUserTime:Z

.field private mStopTicking:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "h:mm a"

    sput-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    const-string v0, "H:mm"

    sput-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/TextClock$1;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/widget/TextClock$2;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/widget/TextClock$1;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/widget/TextClock$2;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    sget-object v0, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method static synthetic access$000(Landroid/widget/TextClock;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/TextClock;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/TextClock;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextClock;->mShouldChooseFormat:Z

    return v0
.end method

.method static synthetic access$202(Landroid/widget/TextClock;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TextClock;->mShouldChooseFormat:Z

    return p1
.end method

.method static synthetic access$300(Landroid/widget/TextClock;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/TextClock;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextClock;->mStopTicking:Z

    return v0
.end method

.method static synthetic access$500(Landroid/widget/TextClock;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/TextClock;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/TextClock;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method private calcPersiCalendar(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x2

    const/16 v7, 0x7ed

    const/16 v8, 0x13

    invoke-virtual {v2, v7, v6, v8}, Ljava/util/Calendar;->set(III)V

    const/16 v7, 0x14

    const/16 v8, 0x7ee

    invoke-virtual {v3, v8, v6, v7}, Ljava/util/Calendar;->set(III)V

    const/16 v8, 0x7f1

    const/16 v9, 0x13

    invoke-virtual {v4, v8, v6, v9}, Ljava/util/Calendar;->set(III)V

    const/16 v8, 0x7f2

    invoke-virtual {v5, v8, v6, v7}, Ljava/util/Calendar;->set(III)V

    const/4 v8, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x5

    const/4 v11, 0x1

    if-eqz v9, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->add(II)V

    const/4 v8, 0x1

    :cond_2
    new-instance v9, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-direct {v9, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9}, Ljava/util/Date;->getYear()I

    move-result v12

    add-int/lit16 v12, v12, 0x76c

    invoke-virtual {v9}, Ljava/util/Date;->getMonth()I

    move-result v13

    add-int/2addr v13, v11

    invoke-virtual {v9}, Ljava/util/Date;->getDate()I

    move-result v14

    const/16 v15, 0xc

    new-array v15, v15, [I

    const/16 v7, 0xc

    new-array v7, v7, [I

    const/16 v17, 0x0

    aput v17, v15, v17

    const/16 v18, 0x1f

    aput v18, v15, v11

    const/16 v19, 0x3b

    aput v19, v15, v6

    const/16 v19, 0x5a

    const/4 v6, 0x3

    aput v19, v15, v6

    const/16 v19, 0x78

    const/16 v21, 0x4

    aput v19, v15, v21

    const/16 v19, 0x97

    aput v19, v15, v10

    const/16 v19, 0xb5

    const/16 v22, 0x6

    aput v19, v15, v22

    const/16 v19, 0xd4

    const/16 v23, 0x7

    aput v19, v15, v23

    const/16 v19, 0x8

    const/16 v24, 0xf3

    aput v24, v15, v19

    const/16 v19, 0x111

    const/16 v24, 0x9

    aput v19, v15, v24

    const/16 v19, 0x130

    const/16 v25, 0xa

    aput v19, v15, v25

    const/16 v19, 0xb

    const/16 v26, 0x14e

    aput v26, v15, v19

    aput v17, v7, v17

    aput v18, v7, v11

    const/16 v19, 0x3c

    const/16 v20, 0x2

    aput v19, v7, v20

    const/16 v19, 0x5b

    aput v19, v7, v6

    const/16 v19, 0x79

    aput v19, v7, v21

    const/16 v19, 0x98

    aput v19, v7, v10

    const/16 v10, 0xb6

    aput v10, v7, v22

    const/16 v10, 0xd5

    aput v10, v7, v23

    const/16 v10, 0x8

    const/16 v19, 0xf4

    aput v19, v7, v10

    const/16 v10, 0x112

    aput v10, v7, v24

    const/16 v10, 0x131

    aput v10, v7, v25

    const/16 v10, 0xb

    const/16 v19, 0x14f

    aput v19, v7, v10

    rem-int/lit8 v10, v12, 0x4

    const/16 v6, 0xba

    if-eqz v10, :cond_9

    add-int/lit8 v10, v13, -0x1

    aget v10, v15, v10

    add-int/2addr v10, v14

    const/16 v11, 0x4f

    if-le v10, v11, :cond_6

    add-int/lit8 v10, v10, -0x4f

    if-gt v10, v6, :cond_4

    rem-int/lit8 v6, v10, 0x1f

    if-eqz v6, :cond_3

    div-int/lit8 v6, v10, 0x1f

    const/4 v11, 0x1

    add-int/2addr v6, v11

    rem-int/lit8 v10, v10, 0x1f

    goto :goto_0

    :cond_3
    div-int/lit8 v6, v10, 0x1f

    const/16 v10, 0x1f

    nop

    :goto_0
    add-int/lit16 v11, v12, -0x26d

    :goto_1
    move v1, v10

    goto/16 :goto_a

    :cond_4
    sub-int/2addr v10, v6

    rem-int/lit8 v6, v10, 0x1e

    if-eqz v6, :cond_5

    div-int/lit8 v6, v10, 0x1e

    add-int/lit8 v6, v6, 0x7

    rem-int/lit8 v10, v10, 0x1e

    goto :goto_2

    :cond_5
    div-int/lit8 v6, v10, 0x1e

    add-int/lit8 v6, v6, 0x6

    const/16 v10, 0x1e

    nop

    :goto_2
    add-int/lit16 v11, v12, -0x26d

    goto :goto_1

    :cond_6
    const/16 v6, 0x7cc

    if-le v12, v6, :cond_7

    rem-int/lit8 v6, v12, 0x4

    const/4 v11, 0x1

    if-ne v6, v11, :cond_7

    const/16 v6, 0xb

    goto :goto_3

    :cond_7
    move/from16 v6, v25

    :goto_3
    add-int/2addr v10, v6

    rem-int/lit8 v11, v10, 0x1e

    if-eqz v11, :cond_8

    div-int/lit8 v11, v10, 0x1e

    add-int/lit8 v11, v11, 0xa

    rem-int/lit8 v10, v10, 0x1e

    goto :goto_4

    :cond_8
    div-int/lit8 v11, v10, 0x1e

    add-int/lit8 v11, v11, 0x9

    const/16 v10, 0x1e

    nop

    :goto_4
    add-int/lit16 v1, v12, -0x26e

    move v6, v11

    move v11, v1

    goto :goto_1

    :cond_9
    add-int/lit8 v1, v13, -0x1

    aget v1, v7, v1

    add-int/2addr v1, v14

    const/16 v10, 0x7cc

    if-lt v12, v10, :cond_a

    const/16 v10, 0x4f

    goto :goto_5

    :cond_a
    const/16 v10, 0x50

    :goto_5
    if-le v1, v10, :cond_e

    sub-int/2addr v1, v10

    if-gt v1, v6, :cond_c

    rem-int/lit8 v6, v1, 0x1f

    if-eqz v6, :cond_b

    div-int/lit8 v6, v1, 0x1f

    const/4 v11, 0x1

    add-int/2addr v6, v11

    rem-int/lit8 v1, v1, 0x1f

    goto :goto_6

    :cond_b
    div-int/lit8 v6, v1, 0x1f

    const/16 v1, 0x1f

    nop

    :goto_6
    add-int/lit16 v11, v12, -0x26d

    :goto_7
    goto :goto_a

    :cond_c
    sub-int/2addr v1, v6

    rem-int/lit8 v6, v1, 0x1e

    if-eqz v6, :cond_d

    div-int/lit8 v6, v1, 0x1e

    add-int/lit8 v6, v6, 0x7

    rem-int/lit8 v1, v1, 0x1e

    goto :goto_8

    :cond_d
    div-int/lit8 v6, v1, 0x1e

    add-int/lit8 v6, v6, 0x6

    const/16 v1, 0x1e

    nop

    :goto_8
    add-int/lit16 v11, v12, -0x26d

    goto :goto_7

    :cond_e
    add-int/lit8 v1, v1, 0xa

    rem-int/lit8 v6, v1, 0x1e

    if-eqz v6, :cond_f

    div-int/lit8 v6, v1, 0x1e

    add-int/lit8 v6, v6, 0xa

    rem-int/lit8 v1, v1, 0x1e

    goto :goto_9

    :cond_f
    div-int/lit8 v6, v1, 0x1e

    add-int/lit8 v6, v6, 0x9

    const/16 v1, 0x1e

    nop

    :goto_9
    add-int/lit16 v11, v12, -0x26e

    :goto_a
    move v10, v11

    if-nez v8, :cond_11

    const/16 v11, 0x7ee

    if-eq v12, v11, :cond_10

    const/16 v11, 0x7f2

    if-ne v12, v11, :cond_11

    :cond_10
    const/4 v11, 0x3

    if-ne v13, v11, :cond_11

    const/16 v11, 0x14

    if-ne v14, v11, :cond_11

    add-int/lit8 v1, v1, 0x1

    :cond_11
    const-string v11, ""

    const/16 v16, 0x0

    move-object/from16 v27, v2

    iget-object v2, v0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, v0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "eng"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v16, 0x1

    :cond_12
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_17

    :pswitch_0
    if-eqz v16, :cond_13

    const-string v0, "Esfand"

    goto :goto_b

    :cond_13
    const-string/jumbo v0, "\u0627\u0633\u0641\u0646\u062f"

    :goto_b
    move-object v11, v0

    goto/16 :goto_17

    :pswitch_1
    if-eqz v16, :cond_14

    const-string v0, "Bahman"

    goto :goto_c

    :cond_14
    const-string/jumbo v0, "\u0628\u0647\u0645\u0646"

    :goto_c
    move-object v11, v0

    goto/16 :goto_17

    :pswitch_2
    if-eqz v16, :cond_15

    const-string v0, "Dey"

    goto :goto_d

    :cond_15
    const-string/jumbo v0, "\u062f\u06cc"

    :goto_d
    move-object v11, v0

    goto/16 :goto_17

    :pswitch_3
    if-eqz v16, :cond_16

    const-string v0, "Azar"

    goto :goto_e

    :cond_16
    const-string/jumbo v0, "\u0622\u0630\u0631"

    :goto_e
    move-object v11, v0

    goto/16 :goto_17

    :pswitch_4
    if-eqz v16, :cond_17

    const-string v0, "Aban"

    goto :goto_f

    :cond_17
    const-string/jumbo v0, "\u0622\u0628\u0627\u0646"

    :goto_f
    move-object v11, v0

    goto :goto_17

    :pswitch_5
    if-eqz v16, :cond_18

    const-string v0, "Mehr"

    goto :goto_10

    :cond_18
    const-string/jumbo v0, "\u0645\u0647\u0631"

    :goto_10
    move-object v11, v0

    goto :goto_17

    :pswitch_6
    if-eqz v16, :cond_19

    const-string v0, "Shahrivar"

    goto :goto_11

    :cond_19
    const-string/jumbo v0, "\u0634\u0647\u0631\u064a\u0648\u0631"

    :goto_11
    move-object v11, v0

    goto :goto_17

    :pswitch_7
    if-eqz v16, :cond_1a

    const-string v0, "Mordad"

    goto :goto_12

    :cond_1a
    const-string/jumbo v0, "\u0645\u0631\u062f\u0627\u062f"

    :goto_12
    move-object v11, v0

    goto :goto_17

    :pswitch_8
    if-eqz v16, :cond_1b

    const-string v0, "Tir"

    goto :goto_13

    :cond_1b
    const-string/jumbo v0, "\u062a\u064a\u0631"

    :goto_13
    move-object v11, v0

    goto :goto_17

    :pswitch_9
    if-eqz v16, :cond_1c

    const-string v0, "Khordad"

    goto :goto_14

    :cond_1c
    const-string/jumbo v0, "\u062e\u0631\u062f\u0627\u062f"

    :goto_14
    move-object v11, v0

    goto :goto_17

    :pswitch_a
    if-eqz v16, :cond_1d

    const-string v0, "Ordibehesht"

    goto :goto_15

    :cond_1d
    const-string/jumbo v0, "\u0627\u0631\u062f\u064a\u0628\u0647\u0634\u062a"

    :goto_15
    move-object v11, v0

    goto :goto_17

    :pswitch_b
    if-eqz v16, :cond_1e

    const-string v0, "Farvardin"

    goto :goto_16

    :cond_1e
    const-string/jumbo v0, "\u0641\u0631\u0648\u0631\u062f\u064a\u0646"

    :goto_16
    move-object v11, v0

    nop

    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%d"

    move-object/from16 v28, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v3, v17

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private chooseFormat()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v4, v1, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v4, v1, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    :goto_0
    iget-boolean v2, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    iget-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    iget-boolean v3, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_1
    return-void
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    :cond_1
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    :cond_2
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    return-void
.end method

.method private onTimeChanged()V
    .locals 3

    iget-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "per"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->calcPersiCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private registerObserver()V
    .locals 5

    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextClock$FormatChangeObserver;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/TextClock$FormatChangeObserver;-><init>(Landroid/widget/TextClock;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private registerReceiver()V
    .locals 7

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public disableClockTick()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mStopTicking:Z

    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/TextView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "format12Hour"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat24Hour()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "format24Hour"

    if-nez v0, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "format"

    iget-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hasSeconds"

    iget-boolean v2, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public getFormat()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat12Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat24Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public is24HourModeEnabled()Z
    .locals 2

    iget-boolean v0, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    invoke-direct {p0}, Landroid/widget/TextClock;->registerReceiver()V

    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterReceiver()V

    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    :cond_0
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->onVisibilityAggregated(Z)V

    iget-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    iget-boolean v0, p0, Landroid/widget/TextClock;->mShouldChooseFormat:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/TextClock;->mShouldChooseFormat:Z

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    iput-boolean v1, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    invoke-virtual {p0}, Landroid/widget/TextClock;->invalidate()V

    return-void
.end method

.method public setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method public setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method
