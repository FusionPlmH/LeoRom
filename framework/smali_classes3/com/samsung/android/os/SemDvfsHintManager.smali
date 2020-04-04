.class Lcom/samsung/android/os/SemDvfsHintManager;
.super Lcom/samsung/android/os/SemDvfsManager;
.source "SemDvfsHintManager.java"


# instance fields
.field private ACTION_RESOLUTION_CHANGED:Ljava/lang/String;

.field final APP_LAUNCH_BOOSTING_TIMEOUT_L:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_LL:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_LM:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_M:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_S:I

.field mAppLaunchBoostTime:I

.field private final mAppLaunchPackages:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mHint:Ljava/lang/String;

.field private mHintList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/os/SemDvfsManager;",
            ">;"
        }
    .end annotation
.end field

.field private mHintTimeout:I

.field private mPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

.field mTagName:Ljava/lang/String;

.field mType:I

.field private volatile sCfmsService:Landroid/os/ICustomFrequencyManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mTagName:Ljava/lang/String;

    const/16 v1, 0xfa0

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_LL:I

    const/16 v1, 0x7d0

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_L:I

    const/16 v1, 0xbb8

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_LM:I

    const/16 v1, 0x1f4

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_S:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_M:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mType:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchBoostTime:I

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v0, "com.samsung.ssrm.RESOLUTION_CHANGED"

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->ACTION_RESOLUTION_CHANGED:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/os/SemDvfsHintManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/os/SemDvfsHintManager$1;-><init>(Lcom/samsung/android/os/SemDvfsHintManager;)V

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

    const/16 v0, 0xe

    new-array v1, v0, [Ljava/lang/String;

    const/16 v3, 0x1c

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    invoke-direct {p0, v4}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/16 v2, 0x13

    new-array v4, v2, [I

    fill-array-data v4, :array_2

    invoke-direct {p0, v4}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    const/16 v4, 0x15

    new-array v4, v4, [I

    fill-array-data v4, :array_3

    invoke-direct {p0, v4}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v1, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    invoke-direct {p0, v4}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v1, v5

    new-array v4, v2, [I

    fill-array-data v4, :array_5

    invoke-direct {p0, v4}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v1, v5

    new-array v3, v3, [I

    fill-array-data v3, :array_6

    invoke-direct {p0, v3}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v1, v4

    const/16 v3, 0x19

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    invoke-direct {p0, v4}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v1, v5

    new-array v3, v3, [I

    fill-array-data v3, :array_8

    invoke-direct {p0, v3}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v1, v4

    const/16 v3, 0x17

    new-array v3, v3, [I

    fill-array-data v3, :array_9

    invoke-direct {p0, v3}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    invoke-direct {p0, v3}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v0, v0, [I

    fill-array-data v0, :array_b

    invoke-direct {p0, v0}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xb

    aput-object v0, v1, v3

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    invoke-direct {p0, v0}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xc

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    invoke-direct {p0, v0}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchPackages:[Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mContext:Landroid/content/Context;

    const-class v0, Lcom/samsung/android/os/SemDvfsHintManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/os/SemDvfsHintManager;->createHintNotifier(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->ACTION_RESOLUTION_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x54
        0x9
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x54
        0x19
        0x12
        0x8
        0x15
        0x17
        0x1f
    .end array-data

    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x17
    .end array-data

    :array_4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1f
        0x17
        0x1b
        0x13
        0x16
        0x54
        0xf
        0x13
    .end array-data

    :array_5
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xc
        0x1f
        0x14
        0x1e
        0x13
        0x14
        0x1d
    .end array-data

    :array_6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1f
        0xc
        0x1f
        0x8
        0x1d
        0x16
        0x1b
        0x1e
        0x1f
        0x9
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data

    :array_7
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data

    :array_8
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x1b
        0x16
        0x16
        0x1f
        0x8
        0x3
        0x49
        0x1e
    .end array-data

    :array_9
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x17
        0x1b
        0xa
        0x9
    .end array-data

    :array_a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1b
        0x13
        0x1e
        0xf
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x1f
        0x1b
        0x8
        0x19
        0x12
    .end array-data

    :array_b
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x13
        0x14
        0x1b
        0x54
        0xd
        0x1f
        0x13
        0x18
        0x15
    .end array-data

    :array_c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1b
        0x13
        0x1e
        0xf
        0x54
        0x38
        0x1b
        0x13
        0x1e
        0xf
        0x37
        0x1b
        0xa
    .end array-data

    :array_d
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xe
        0xd
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mTagName:Ljava/lang/String;

    const/16 v1, 0xfa0

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_LL:I

    const/16 v1, 0x7d0

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_L:I

    const/16 v1, 0xbb8

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_LM:I

    const/16 v1, 0x1f4

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_S:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_M:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mType:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchBoostTime:I

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v0, "com.samsung.ssrm.RESOLUTION_CHANGED"

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->ACTION_RESOLUTION_CHANGED:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/os/SemDvfsHintManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/os/SemDvfsHintManager$1;-><init>(Lcom/samsung/android/os/SemDvfsHintManager;)V

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

    const/16 v0, 0xe

    new-array v1, v0, [Ljava/lang/String;

    const/16 v3, 0x1c

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    invoke-direct {p0, v4}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/16 v2, 0x13

    new-array v4, v2, [I

    fill-array-data v4, :array_2

    invoke-direct {p0, v4}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    const/16 v4, 0x15

    new-array v4, v4, [I

    fill-array-data v4, :array_3

    invoke-direct {p0, v4}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v1, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    invoke-direct {p0, v4}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v1, v5

    new-array v4, v2, [I

    fill-array-data v4, :array_5

    invoke-direct {p0, v4}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v1, v5

    new-array v3, v3, [I

    fill-array-data v3, :array_6

    invoke-direct {p0, v3}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v1, v4

    const/16 v3, 0x19

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    invoke-direct {p0, v4}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v1, v5

    new-array v3, v3, [I

    fill-array-data v3, :array_8

    invoke-direct {p0, v3}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v1, v4

    const/16 v3, 0x17

    new-array v3, v3, [I

    fill-array-data v3, :array_9

    invoke-direct {p0, v3}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    invoke-direct {p0, v3}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v0, v0, [I

    fill-array-data v0, :array_b

    invoke-direct {p0, v0}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xb

    aput-object v0, v1, v3

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    invoke-direct {p0, v0}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xc

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    invoke-direct {p0, v0}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchPackages:[Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mContext:Landroid/content/Context;

    const-class v0, Lcom/samsung/android/os/SemDvfsHintManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/os/SemDvfsHintManager;->createHintNotifier(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x54
        0x9
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x54
        0x19
        0x12
        0x8
        0x15
        0x17
        0x1f
    .end array-data

    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x17
    .end array-data

    :array_4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1f
        0x17
        0x1b
        0x13
        0x16
        0x54
        0xf
        0x13
    .end array-data

    :array_5
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xc
        0x1f
        0x14
        0x1e
        0x13
        0x14
        0x1d
    .end array-data

    :array_6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1f
        0xc
        0x1f
        0x8
        0x1d
        0x16
        0x1b
        0x1e
        0x1f
        0x9
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data

    :array_7
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data

    :array_8
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x1b
        0x16
        0x16
        0x1f
        0x8
        0x3
        0x49
        0x1e
    .end array-data

    :array_9
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x17
        0x1b
        0xa
        0x9
    .end array-data

    :array_a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1b
        0x13
        0x1e
        0xf
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x1f
        0x1b
        0x8
        0x19
        0x12
    .end array-data

    :array_b
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x13
        0x14
        0x1b
        0x54
        0xd
        0x1f
        0x13
        0x18
        0x15
    .end array-data

    :array_c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1b
        0x13
        0x1e
        0xf
        0x54
        0x38
        0x1b
        0x13
        0x1e
        0xf
        0x37
        0x1b
        0xa
    .end array-data

    :array_d
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xe
        0xd
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
    .end array-data
.end method

.method private createHintNotifier(Landroid/content/Context;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v0, :cond_2

    :try_start_0
    const-string v0, "CustomFrequencyManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v4

    iput-object v4, v1, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v0, :cond_2

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-boolean v4, v1, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "createHintNotifier:: failed to get cfms service."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v0, :cond_2

    return-void

    :goto_0
    iget-object v4, v1, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v4, :cond_1

    return-void

    :cond_1
    throw v0

    :cond_2
    iput-object v3, v1, Lcom/samsung/android/os/SemDvfsHintManager;->mHint:Ljava/lang/String;

    const/4 v0, 0x0

    move-object v4, v0

    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v0, v3}, Landroid/os/ICustomFrequencyManager;->getDvfsPolicyByHint(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v4, v0

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v5, v1, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "createHintNotifier:: failed to call getDvfsPolicyByHint."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v11, v10, v11

    const-string v12, "CPU_MIN"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    new-instance v12, Lcom/samsung/android/os/SemDvfsCpuManager;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "@CPU_MIN"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xc

    invoke-direct {v12, v2, v13, v14}, Lcom/samsung/android/os/SemDvfsCpuManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object v8, v12

    const-string v9, "CPU"

    invoke-virtual {v8}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object v10

    goto/16 :goto_3

    :cond_3
    const-string v12, "GPU_MIN"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    new-instance v12, Lcom/samsung/android/os/SemDvfsGpuManager;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "@GPU_MIN"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-direct {v12, v2, v13, v14}, Lcom/samsung/android/os/SemDvfsGpuManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object v8, v12

    const-string v9, "GPU"

    invoke-virtual {v8}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object v10

    goto/16 :goto_3

    :cond_4
    const-string v12, "BUS_MIN"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v9, "BUS"

    new-instance v12, Lcom/samsung/android/os/SemDvfsBusManager;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "@BUS_MIN"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x13

    invoke-direct {v12, v2, v13, v14}, Lcom/samsung/android/os/SemDvfsBusManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object v8, v12

    invoke-virtual {v8}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object v10

    goto/16 :goto_3

    :cond_5
    const-string v12, "CORE_NUM_MIN"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    new-instance v12, Lcom/samsung/android/os/SemDvfsCpuCoreManager;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "@CORE_NUM_MIN"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xe

    invoke-direct {v12, v2, v13, v14}, Lcom/samsung/android/os/SemDvfsCpuCoreManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object v8, v12

    const-string v9, "CORE_NUM"

    invoke-virtual {v8}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object v10

    goto/16 :goto_3

    :cond_6
    const-string v12, "POWER_COLLAPSE"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    new-instance v12, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "@POWER_COLLAPSE"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x17

    invoke-direct {v12, v2, v13, v14}, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object v8, v12

    const-string v9, "POWER_COLLAPSE"

    goto :goto_3

    :cond_7
    const-string v12, "SCHEDTUNE_POLICY"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    new-instance v12, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "@SCHEDTUNE_POLICY"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x1d

    invoke-direct {v12, v2, v13, v14}, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object v8, v12

    const-string v9, "SCHEDTUNE_POLICY"

    goto :goto_3

    :cond_8
    const-string v12, "LPM_BIAS"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    new-instance v12, Lcom/samsung/android/os/SemDvfsLpmBiasManager;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "@LPM_BIAS"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x1f

    invoke-direct {v12, v2, v13, v14}, Lcom/samsung/android/os/SemDvfsLpmBiasManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object v8, v12

    const-string v9, "LPM_BIAS"

    goto :goto_3

    :cond_9
    const-string/jumbo v12, "timeout"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v1, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    :cond_a
    :goto_3
    if-eqz v8, :cond_12

    const-string/jumbo v12, "max"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_f

    const-string v12, "0"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    goto/16 :goto_4

    :cond_b
    const-string v12, "%"

    invoke-virtual {v7, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    const-string v12, "CPU"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    if-eqz v12, :cond_c

    const-string v12, "%"

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    div-double v11, v15, v13

    invoke-virtual {v8, v11, v12}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-boolean v11, v1, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v11, :cond_11

    iget-object v11, v1, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "hint(%) : "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", moduleName = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", freq = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "%"

    invoke-virtual {v7, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    const/4 v13, 0x0

    invoke-virtual {v7, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    div-double/2addr v13, v15

    invoke-virtual {v8, v13, v14}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", timeOut = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_c
    const-string v11, "GPU"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    const-string v11, "%"

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    div-double/2addr v11, v13

    invoke-virtual {v8, v11, v12}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-boolean v11, v1, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v11, :cond_11

    iget-object v11, v1, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hint(%) : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", moduleName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", freq = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "%"

    invoke-virtual {v7, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v7, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    div-double/2addr v13, v15

    invoke-virtual {v8, v13, v14}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", timeOut = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_d
    const-string v11, "BUS"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    const-string v11, "%"

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    div-double/2addr v11, v13

    invoke-virtual {v8, v11, v12}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-boolean v11, v1, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v11, :cond_11

    iget-object v11, v1, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hint(%) : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", moduleName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", freq = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "%"

    invoke-virtual {v7, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v7, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    div-double/2addr v13, v15

    invoke-virtual {v8, v13, v14}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", timeOut = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_e
    nop

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyForSsrm(I)I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-boolean v11, v1, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v11, :cond_11

    iget-object v11, v1, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hint(Normal) : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", moduleName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", freq = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", timeOut = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_f
    :goto_4
    if-eqz v10, :cond_10

    const/4 v11, 0x0

    aget v12, v10, v11

    invoke-virtual {v8, v12}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_10
    iget-boolean v11, v1, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v11, :cond_11

    if-eqz v10, :cond_11

    iget-object v11, v1, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Max_hint : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", moduleName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", freq = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    aget v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", timeOut = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_5
    iget-object v11, v1, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    goto/16 :goto_2

    :cond_13
    return-void
.end method

.method private isPackageExistInAppLaunch(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchPackages:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private x([I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    xor-int/lit8 v2, v2, 0x7a

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public acquire()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsHintManager;->acquire(I)V

    return-void
.end method

.method public acquire(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/os/SemDvfsManager;

    const-string v2, "CPU"

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CPU_CORE"

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GPU"

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BUS"

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SCHEDTUNE_POLICY"

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "POWER_COLLAPSE"

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LPM_BIAS"

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    iget v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    return-void
.end method

.method public acquire(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchBoostTime:I

    const-string v0, "com.sec.android.app.camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchBoostTime:I

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/os/SemDvfsHintManager;->isPackageExistInAppLaunch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchBoostTime:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/os/SemDvfsManager;

    const-string v2, "CPU"

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "CPU_CORE"

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "GPU"

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "BUS"

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SCHEDTUNE_POLICY"

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "POWER_COLLAPSE"

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "LPM_BIAS"

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    iget v3, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchBoostTime:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_3
    goto :goto_1

    :cond_4
    return-void
.end method

.method public clearDvfsValue()V
    .locals 1

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mDvfsValue:I

    return-void
.end method

.method public getApproximateFrequencyByPercentForSSRM(D)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public release()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/os/SemDvfsManager;

    const-string v2, "CPU"

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CPU_CORE"

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GPU"

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BUS"

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SCHEDTUNE_POLICY"

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "POWER_COLLAPSE"

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LPM_BIAS"

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method public setDvfsValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mDvfsValue:I

    return-void
.end method

.method public setDvfsValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setValueAtUpdate(Lcom/samsung/android/os/SemDvfsManager;[ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_8

    const-string v0, "CPU"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CPU_CORE"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GPU"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BUS"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SCHEDTUNE_POLICY"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "POWER_COLLAPSE"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LPM_BIAS"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object p2

    :cond_1
    const-string/jumbo v0, "max"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    const-string v0, "0"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string v0, "%"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "CPU"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    if-eqz v0, :cond_3

    const-string v0, "%"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    div-double/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-boolean v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setValueAtUpdateHint(%) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mgr.getName() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", freq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-virtual {p3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    div-double/2addr v5, v2

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeOut = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    const-string v0, "GPU"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "%"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    div-double/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-boolean v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setValueAtUpdateHint(%) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mgr.getName() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", freq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-virtual {p3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    div-double/2addr v5, v2

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeOut = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    const-string v0, "BUS"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "%"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    div-double/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-boolean v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setValueAtUpdateHint(%) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mgr.getName() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", freq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-virtual {p3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    div-double/2addr v5, v2

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeOut = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyForSsrm(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-boolean v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setValueAtUpdateHint(Normal) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mgr.getName() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeOut = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    :goto_0
    if-eqz p2, :cond_7

    aget v0, p2, v1

    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setValueAtUpdateHint Max_hint : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mgr.getName() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", freq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p2, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeOut = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    return-void
.end method

.method public update(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v0, :cond_2

    :try_start_0
    const-string v0, "CustomFrequencyManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v0, :cond_2

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "createHintNotifier:: failed to get cfms service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v0, :cond_2

    return-void

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_1

    return-void

    :cond_1
    throw v0

    :cond_2
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p2}, Landroid/os/ICustomFrequencyManager;->getDvfsPolicyByHint(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "createHintNotifier:: failed to call getDvfsPolicyByHint."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    iget-boolean v6, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Check Updatehint update Key : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/os/SemDvfsManager;

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v9, v8, v9

    const-string v9, ""

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    :cond_4
    invoke-virtual {v7}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p0, v7, v8, v4, p2}, Lcom/samsung/android/os/SemDvfsHintManager;->setValueAtUpdate(Lcom/samsung/android/os/SemDvfsManager;[ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updatehint update Key : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", mgr.getName() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    goto :goto_3

    :cond_6
    :goto_4
    goto/16 :goto_2

    :cond_7
    return-void
.end method
