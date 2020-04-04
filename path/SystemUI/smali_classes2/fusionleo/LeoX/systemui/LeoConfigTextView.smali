.class public Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;
.super Landroid/widget/TextView;
.source "LeoConfigTextView.java"


# static fields
.field private static final CORES:I

.field public static final ConstellationEdgeDay:[I

.field public static DownIcom:I

.field public static TAG:Ljava/lang/String;

.field public static UpDownIcom:I

.field public static UpIcom:I


# instance fields
.field private ACTION_BATTERY:Ljava/lang/String;

.field public LeoRes:Landroid/content/res/Resources;

.field final author:Ljava/lang/String;

.field private cpuFreq:Ljava/lang/String;

.field public isMoving:Z

.field private lastIdle:[J

.field private lastTotal:[J

.field private mActivityManager:Landroid/app/ActivityManager;

.field public mCalendar:Landroid/icu/util/Calendar;

.field public mContext:Landroid/content/Context;

.field public mNonAdaptedColor:I

.field public memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

.field private mgz:Ljava/lang/String;

.field public startY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->TAG:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->ConstellationEdgeDay:[I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->CORES:I

    return-void

    :array_0
    .array-data 4
        0x14
        0x13
        0x15
        0x15
        0x15
        0x16
        0x17
        0x17
        0x17
        0x17
        0x16
        0x16
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "FusionLeo Team\nWhat are you looking for? Need help? leo@leorom.cc"

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->author:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->ConfigManager:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->LeoRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->ACTION_BATTERY:Ljava/lang/String;

    sget v0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->CORES:I

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->lastIdle:[J

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->lastTotal:[J

    const-string v0, "CPU%1$s: %2$s"

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->cpuFreq:Ljava/lang/String;

    const-string v0, "MHz"

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mgz:Ljava/lang/String;

    iput-object p1, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "FusionLeo Team\nWhat are you looking for? Need help? leo@leorom.cc"

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->author:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->ConfigManager:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->LeoRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->ACTION_BATTERY:Ljava/lang/String;

    sget v0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->CORES:I

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->lastIdle:[J

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->lastTotal:[J

    const-string v0, "CPU%1$s: %2$s"

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->cpuFreq:Ljava/lang/String;

    const-string v0, "MHz"

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mgz:Ljava/lang/String;

    iput-object p1, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "FusionLeo Team\nWhat are you looking for? Need help? leo@leorom.cc"

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->author:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->ConfigManager:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->LeoRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->ACTION_BATTERY:Ljava/lang/String;

    sget v0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->CORES:I

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->lastIdle:[J

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->lastTotal:[J

    const-string v0, "CPU%1$s: %2$s"

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->cpuFreq:Ljava/lang/String;

    const-string v0, "MHz"

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mgz:Ljava/lang/String;

    iput-object p1, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method private cpuUsage(I[Ljava/lang/String;)I
    .locals 13

    const/4 v0, 0x4

    aget-object v0, p2, v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    array-length v6, p2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, p2, v7

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v8, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    add-long/2addr v4, v9

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->lastIdle:[J

    aget-wide v6, v1, p1

    sub-long v6, v2, v6

    iget-object v8, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->lastTotal:[J

    aget-wide v9, v8, p1

    sub-long v9, v4, v9

    aput-wide v4, v8, p1

    aput-wide v2, v1, p1

    sub-long v11, v9, v6

    long-to-float v1, v11

    long-to-float v8, v9

    div-float/2addr v1, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float v1, v1, v8

    float-to-int v1, v1

    return v1
.end method

.method private formateFileSize(J)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCpuTemp()Ljava/lang/String;
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->qcomCPU()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "L3N5cy9jbGFzcy90aGVybWFsL3RoZXJtYWxfem9uZTEvdGVtcA=="

    invoke-static {v1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "L3N5cy9jbGFzcy90aGVybWFsL3RoZXJtYWxfem9uZTAvdGVtcA=="

    invoke-static {v1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v6, 0x0

    const-string v8, ""

    cmp-long v9, v4, v6

    if-gez v9, :cond_1

    move-object v6, v8

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    long-to-double v9, v4

    const-wide v11, 0x408f400000000000L    # 1000.0

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v11

    double-to-float v7, v9

    :try_start_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    move-object v0, v6

    :cond_2
    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method private getFrequencyText(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xc

    invoke-static {p2, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->Superinfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/online"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "device_info_idle"

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->Superinfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    invoke-static {p2, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->Superinfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->RemoveLast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mgz:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public static getLeoChineseTimeDetail(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/16 v0, 0xc

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x5

    packed-switch p0, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    aget-object v0, p1, v0

    return-object v0

    :pswitch_1
    aget-object v0, p1, v0

    return-object v0

    :pswitch_2
    aget-object v0, p1, v7

    return-object v0

    :pswitch_3
    aget-object v0, p1, v7

    return-object v0

    :pswitch_4
    aget-object v0, p1, v7

    return-object v0

    :pswitch_5
    const/16 v0, 0xa

    aget-object v0, p1, v0

    return-object v0

    :pswitch_6
    const/16 v0, 0x9

    aget-object v0, p1, v0

    return-object v0

    :pswitch_7
    aget-object v0, p1, v1

    return-object v0

    :pswitch_8
    aget-object v0, p1, v1

    return-object v0

    :pswitch_9
    aget-object v0, p1, v2

    return-object v0

    :pswitch_a
    aget-object v0, p1, v2

    return-object v0

    :pswitch_b
    aget-object v0, p1, v3

    return-object v0

    :pswitch_c
    aget-object v0, p1, v3

    return-object v0

    :pswitch_d
    aget-object v0, p1, v8

    return-object v0

    :pswitch_e
    aget-object v0, p1, v8

    return-object v0

    :pswitch_f
    aget-object v0, p1, v8

    return-object v0

    :pswitch_10
    const/4 v0, 0x4

    aget-object v0, p1, v0

    return-object v0

    :pswitch_11
    const/4 v0, 0x3

    aget-object v0, p1, v0

    return-object v0

    :pswitch_12
    aget-object v0, p1, v4

    return-object v0

    :pswitch_13
    aget-object v0, p1, v4

    return-object v0

    :pswitch_14
    aget-object v0, p1, v5

    return-object v0

    :pswitch_15
    aget-object v0, p1, v5

    return-object v0

    :pswitch_16
    aget-object v0, p1, v6

    return-object v0

    :pswitch_17
    aget-object v0, p1, v6

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public static getLeoChineseTimePiu(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v2, 0x3

    if-eq p0, v0, :cond_3

    if-eq p0, v2, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v2, 0x5

    if-eq p0, v2, :cond_0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    aget-object v0, p1, v1

    return-object v0

    :pswitch_1
    aget-object v0, p1, v1

    return-object v0

    :pswitch_2
    aget-object v0, p1, v0

    return-object v0

    :pswitch_3
    aget-object v0, p1, v0

    return-object v0

    :pswitch_4
    aget-object v0, p1, v0

    return-object v0

    :cond_0
    aget-object v0, p1, v0

    return-object v0

    :cond_1
    aget-object v0, p1, v0

    return-object v0

    :cond_2
    aget-object v0, p1, v2

    return-object v0

    :cond_3
    aget-object v0, p1, v2

    return-object v0

    :cond_4
    aget-object v0, p1, v0

    return-object v0

    :cond_5
    aget-object v0, p1, v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getLeoChineseTimeSeason(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    packed-switch p0, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    aget-object v0, p1, v3

    return-object v0

    :pswitch_1
    aget-object v0, p1, v0

    return-object v0

    :pswitch_2
    aget-object v0, p1, v0

    return-object v0

    :pswitch_3
    aget-object v0, p1, v0

    return-object v0

    :pswitch_4
    aget-object v0, p1, v1

    return-object v0

    :pswitch_5
    aget-object v0, p1, v1

    return-object v0

    :pswitch_6
    aget-object v0, p1, v1

    return-object v0

    :pswitch_7
    aget-object v0, p1, v2

    return-object v0

    :pswitch_8
    aget-object v0, p1, v2

    return-object v0

    :pswitch_9
    aget-object v0, p1, v2

    return-object v0

    :pswitch_a
    aget-object v0, p1, v3

    return-object v0

    :pswitch_b
    aget-object v0, p1, v3

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static getLeoTimeDetailChinese(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/16 v0, 0xb

    const/16 v1, 0xa

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    aget-object v0, p1, v11

    return-object v0

    :pswitch_1
    aget-object v0, p1, v0

    return-object v0

    :pswitch_2
    aget-object v0, p1, v0

    return-object v0

    :pswitch_3
    aget-object v0, p1, v1

    return-object v0

    :pswitch_4
    aget-object v0, p1, v1

    return-object v0

    :pswitch_5
    aget-object v0, p1, v2

    return-object v0

    :pswitch_6
    aget-object v0, p1, v2

    return-object v0

    :pswitch_7
    aget-object v0, p1, v3

    return-object v0

    :pswitch_8
    aget-object v0, p1, v3

    return-object v0

    :pswitch_9
    aget-object v0, p1, v4

    return-object v0

    :pswitch_a
    aget-object v0, p1, v4

    return-object v0

    :pswitch_b
    aget-object v0, p1, v5

    return-object v0

    :pswitch_c
    aget-object v0, p1, v5

    return-object v0

    :pswitch_d
    aget-object v0, p1, v6

    return-object v0

    :pswitch_e
    aget-object v0, p1, v6

    return-object v0

    :pswitch_f
    aget-object v0, p1, v7

    return-object v0

    :pswitch_10
    aget-object v0, p1, v7

    return-object v0

    :pswitch_11
    aget-object v0, p1, v8

    return-object v0

    :pswitch_12
    aget-object v0, p1, v8

    return-object v0

    :pswitch_13
    aget-object v0, p1, v9

    return-object v0

    :pswitch_14
    aget-object v0, p1, v9

    return-object v0

    :pswitch_15
    aget-object v0, p1, v10

    return-object v0

    :pswitch_16
    aget-object v0, p1, v10

    return-object v0

    :pswitch_17
    aget-object v0, p1, v11

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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


# virtual methods
.method public ConstellationString(Landroid/icu/util/Calendar;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mContext:Landroid/content/Context;

    const-string v1, "Y29uc3RlbGxhdGlvbl8xMlRpbWU="

    invoke-static {v1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    sget-object v3, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->ConstellationEdgeDay:[I

    aget v3, v3, v1

    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    if-ltz v1, :cond_1

    aget-object v3, v0, v1

    return-object v3

    :cond_1
    const/16 v3, 0xb

    aget-object v3, v0, v3

    return-object v3
.end method

.method public CpuModl(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->qcomCPU()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getCPUInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "ro.hardware"

    invoke-static {v0}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoSystemProper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public LeoSaltSymbol(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoSymbolStyle(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LeoSaltSymbolStyle(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, " "

    invoke-virtual {p0, p1, p2, v0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->LeoSaltSymbol(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LeoString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public NetworkIconStyle(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "stat_sys_network_traffic_a"

    return-object v0

    :pswitch_0
    const-string v0, "stat_sys_network_traffic_h"

    return-object v0

    :pswitch_1
    const-string v0, "stat_sys_network_traffic_g"

    return-object v0

    :pswitch_2
    const-string v0, "stat_sys_network_traffic_f"

    return-object v0

    :pswitch_3
    const-string v0, "stat_sys_network_traffic_e"

    return-object v0

    :pswitch_4
    const-string v0, "stat_sys_network_traffic_d"

    return-object v0

    :pswitch_5
    const-string v0, "stat_sys_network_traffic_c"

    return-object v0

    :pswitch_6
    const-string v0, "stat_sys_network_traffic_b"

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
.end method

.method protected RemoveLast(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public getAvailableExternalMemorySize()Ljava/lang/String;
    .locals 9

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    iget-object v6, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mContext:Landroid/content/Context;

    mul-long v7, v2, v4

    invoke-static {v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public getBatteryCapacity(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const-string v0, "com.android.internal.os.PowerProfile"

    const-wide/16 v1, 0x0

    const-string v3, "com.android.internal.os.PowerProfile"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "getBatteryCapacity"

    new-array v6, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v5

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryTemp()F
    .locals 3

    invoke-virtual {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->ACTION_BATTERY:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "temperature"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getCPUusage(Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    const-string v0, "cpu"

    sget v1, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->CORES:I

    new-array v1, v1, [I

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "/proc/stat"

    const-string v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-wide/16 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    sget v6, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->CORES:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v7, -0x1

    const-string v8, ""

    if-ge v5, v6, :cond_2

    move-object v6, v8

    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v9

    :goto_1
    goto :goto_2

    :catchall_0
    move-exception v9

    move-object v10, v9

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception v9

    goto :goto_1

    :goto_2
    :try_start_3
    const-string v9, "[ ]+"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v10, v9, v4

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    aget-object v10, v9, v4

    invoke-virtual {v10, v0, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v11, 0xc

    invoke-static {p1, v11}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->Superinfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/online"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-direct {p0, v8, v9}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->cpuUsage(I[Ljava/lang/String;)I

    move-result v7

    aput v7, v1, v8

    goto :goto_3

    :cond_0
    aput v7, v1, v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v7

    move-object v8, v7

    move-object v2, v3

    goto :goto_4

    :catch_1
    move-exception v7

    :cond_1
    :goto_3
    nop

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v8

    const/4 v4, 0x0

    :goto_5
    :try_start_4
    sget v5, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->CORES:I

    if-ge v4, v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    aget v6, v1, v4

    if-ne v6, v7, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "device_info_idle"

    invoke-virtual {p0, v8}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v8, v1, v4

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "%"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :goto_7
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_4
    nop

    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_8

    :catch_2
    move-exception v5

    :goto_8
    move-object v2, v3

    return-object v0

    :catchall_2
    move-exception v0

    move-object v4, v0

    move-object v2, v3

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v0, v3

    move-object v2, v0

    :goto_9
    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_a

    :catch_4
    move-exception v4

    :cond_5
    :goto_a
    nop

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    const/4 v0, 0x0

    return-object v0

    :catch_5
    move-exception v0

    if-eqz v2, :cond_6

    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_c

    :catch_6
    move-exception v3

    :cond_6
    :goto_c
    const-string v3, "CPU usage error!"

    return-object v3
.end method

.method public getColorForDarkIntensity(FII)I
    .locals 3

    invoke-static {}, Landroid/support/graphics/drawable/ArgbEvaluator;->getInstance()Landroid/support/graphics/drawable/ArgbEvaluator;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCpuMhz(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    sget v1, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->CORES:I

    const-string v2, " "

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->cpuFreq:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "0-3"

    aput-object v7, v5, v6

    invoke-direct {p0, v6, p1}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->getFrequencyText(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->cpuFreq:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "4-7"

    aput-object v4, v3, v6

    const/4 v4, 0x4

    invoke-direct {p0, v4, p1}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->getFrequencyText(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget v3, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->CORES:I

    if-ge v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->getFrequencyText(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getLeoChineseWeek(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    const/4 v0, 0x6

    aget-object v0, p2, v0

    return-object v0

    :pswitch_1
    const/4 v0, 0x5

    aget-object v0, p2, v0

    return-object v0

    :pswitch_2
    const/4 v0, 0x4

    aget-object v0, p2, v0

    return-object v0

    :pswitch_3
    const/4 v0, 0x3

    aget-object v0, p2, v0

    return-object v0

    :pswitch_4
    const/4 v0, 0x2

    aget-object v0, p2, v0

    return-object v0

    :pswitch_5
    const/4 v0, 0x1

    aget-object v0, p2, v0

    return-object v0

    :pswitch_6
    const/4 v0, 0x0

    aget-object v0, p2, v0

    return-object v0

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

.method public getLeoChineseWeekStyle(ZI)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->isChineseLanguage()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mCalendar:Landroid/icu/util/Calendar;

    iget-object v1, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mCalendar:Landroid/icu/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mContext:Landroid/content/Context;

    const-string v3, "Q2hpbmVzZV93ZWVrX3N0eWxlX2RlZmF1bHQ="

    invoke-static {v3}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->getLeoChineseWeek(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mContext:Landroid/content/Context;

    const-string v3, "Q2hpbmVzZV93ZWVrX3N0eWxlX2dlbmVyYWw="

    invoke-static {v3}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->getLeoChineseWeek(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mContext:Landroid/content/Context;

    const-string v3, "Q2hpbmVzZV93ZWVrX3N0eWxlX3Byb3ZpbmNpYWxpc20="

    invoke-static {v3}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->getLeoChineseWeek(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mContext:Landroid/content/Context;

    const-string v3, "Q2hpbmVzZV93ZWVrX3N0eWxlX3NpbXBsZW5lc3M="

    invoke-static {v3}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->getLeoChineseWeek(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne p2, v2, :cond_4

    iget-object v2, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mContext:Landroid/content/Context;

    const-string v3, "Q2hpbmVzZV93ZWVrX3N0eWxlX2FuY2llbnQ="

    invoke-static {v3}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->getLeoChineseWeek(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    if-ne p2, v2, :cond_5

    iget-object v2, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mContext:Landroid/content/Context;

    const-string v3, "Q2hpbmVzZV93ZWVrX3N0eWxlX2NoYWxkYWljdA=="

    invoke-static {v3}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->getLeoChineseWeek(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_0
    goto :goto_1

    :cond_6
    const-string v0, "EEE"

    :cond_7
    :goto_1
    return-object v0
.end method

.method public getLeoDateStyle(IZIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    move-object v2, p6

    const-string v3, ""

    if-eqz p2, :cond_0

    const-string v4, " "

    invoke-virtual {p0, p4, p5, v4}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->LeoSaltSymbol(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->getLeoChineseWeekStyle(ZI)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    :goto_1
    const-string v7, "default_date_format"

    invoke-virtual {p0, v7}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    if-nez p1, :cond_4

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    :goto_3
    return-object v5
.end method

.method public getLeoIcon(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->LeoRes:Landroid/content/res/Resources;

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->ConfigManager:Ljava/lang/String;

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLeoNetworkIconStyle(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->NetworkIconStyle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_updown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->getLeoIcon(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->UpDownIcom:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->NetworkIconStyle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_up"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->getLeoIcon(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->UpIcom:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->NetworkIconStyle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_down"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->getLeoIcon(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->DownIcom:I

    return-void
.end method

.method public getLeoTimeStyle(IZILjava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v1

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mCalendar:Landroid/icu/util/Calendar;

    iget-object v2, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mCalendar:Landroid/icu/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->isChineseLanguage()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz p2, :cond_8

    if-nez p3, :cond_0

    iget-object v3, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mContext:Landroid/content/Context;

    const-string v4, "Q2hpbmVzZV8xMlRpbWU="

    invoke-static {v4}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->getLeoTimeDetailChinese(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne p3, v4, :cond_1

    iget-object v3, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mContext:Landroid/content/Context;

    const-string v4, "Q2hpbmVzZV8xMlRpbWVpbnRlcnZhbA=="

    invoke-static {v4}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->getLeoChineseTimeDetail(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    if-ne p3, v3, :cond_2

    iget-object v3, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mContext:Landroid/content/Context;

    const-string v4, "Q2hpbmVzZV81VGltZQ=="

    invoke-static {v4}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->getLeoChineseTimePiu(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne p3, v3, :cond_3

    iget-object v3, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mContext:Landroid/content/Context;

    const-string v4, "Q2hpbmVzZV80c2Vhc29u"

    invoke-static {v4}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->getLeoChineseTimeSeason(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v4, 0x4

    if-ne p3, v4, :cond_4

    iget-object v3, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {p0, v3}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->ConstellationString(Landroid/icu/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v4, 0x5

    if-ne p3, v4, :cond_5

    new-instance v3, Lcom/fusionleo/LeoX/systemui/LeoLunar;

    iget-object v4, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mCalendar:Landroid/icu/util/Calendar;

    iget-object v5, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/fusionleo/LeoX/systemui/LeoLunar;-><init>(Landroid/icu/util/Calendar;Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, p1, v4}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->toLeoLunarChineseLunar(ZZII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v4, 0x6

    if-ne p3, v4, :cond_7

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    iget-object v7, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v7, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    iget-object v7, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v7, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u5e74"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\u5468"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\u5929"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    goto :goto_0

    :cond_7
    const/4 v3, 0x7

    if-ne p3, v3, :cond_6

    invoke-static {p4}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    :goto_0
    return-object v0
.end method

.method public getSystemMemoryUsableSize()Ljava/lang/String;
    .locals 3

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-direct {p0, v0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->formateFileSize(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getTotalExternalMemorySize()Ljava/lang/String;
    .locals 9

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v4

    mul-long v6, v4, v2

    iget-object v8, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public getTotalRam()Ljava/lang/String;
    .locals 7

    const-string v0, "/proc/meminfo"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\s+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object v1, v5

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/Float;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x49800000    # 1048576.0f

    div-float/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v3}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v2, v3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " GB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    return-void
.end method

.method public setLeoTextFont(ILjava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoFonts(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setLeoTextPadding(FF)V
    .locals 3

    float-to-int v0, p1

    float-to-int v1, p2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setLeoTextSize(I)V
    .locals 1

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->setTextSize(F)V

    return-void
.end method
