.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static ntpScore:[I

.field private static ntpServer:[Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private currentTime:J

.field private failedTime:J

.field private mCM:Landroid/net/ConnectivityManager;

.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private mRetryStep:I

.field private mServer:Ljava/lang/String;

.field private mServer2:Ljava/lang/String;

.field private mServer3:Ljava/lang/String;

.field private mServer4:Ljava/lang/String;

.field private mTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Landroid/util/NtpTrustedTime;->ntpServer:[Ljava/lang/String;

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/util/NtpTrustedTime;->ntpScore:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mServer4:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/NtpTrustedTime;->mRetryStep:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/util/NtpTrustedTime;->currentTime:J

    iput-wide v0, p0, Landroid/util/NtpTrustedTime;->failedTime:J

    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating NtpTrustedTime using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mServer4:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/NtpTrustedTime;->mRetryStep:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/util/NtpTrustedTime;->currentTime:J

    iput-wide v0, p0, Landroid/util/NtpTrustedTime;->failedTime:J

    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating NtpTrustedTime using server1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " server2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " server3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " server4:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    iput-object p2, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    iput-object p3, p0, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    iput-object p4, p0, Landroid/util/NtpTrustedTime;->mServer4:Ljava/lang/String;

    iput-wide p5, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    return-void
.end method

.method private ReportBigdata(Ljava/lang/String;I)Z
    .locals 5

    sget-object v0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    const-string v0, "NtpTrustedTime"

    const-string v2, "ReportBigdata parameter is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NtpTrustedTime"

    const-string v2, "ReportBigdata do not report in roaming status."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_2

    const-string v2, "NtpTrustedTime"

    const-string v3, "ReportBigdata do not report with WIFI."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.intent.action.BIG_DATA_MOBILE_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "category"

    const-string v3, "NTPE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "srvn"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "frsn"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "NtpTrustedTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReportBigdata host = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const-string v0, "NtpTrustedTime"

    const-string v2, "ReportBigdata sContext is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 38

    const-class v1, Landroid/util/NtpTrustedTime;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const v3, 0x1040229

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x10e00aa

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    const-string/jumbo v6, "ntp_server"

    invoke-static {v2, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "ntp_timeout"

    invoke-static {v2, v7, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    if-eqz v6, :cond_0

    move-object v9, v6

    goto :goto_0

    :cond_0
    move-object v9, v3

    :goto_0
    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const-string v13, "cn.pool.ntp.org"

    const/4 v14, 0x1

    aput-object v13, v11, v14

    const-string v13, "asia.pool.ntp.org"

    const/4 v15, 0x2

    aput-object v13, v11, v15

    const-string v13, "1.cn.pool.ntp.org"

    const/16 v16, 0x3

    aput-object v13, v11, v16

    new-array v13, v10, [Ljava/lang/String;

    aput-object v9, v13, v12

    const-string v17, "asia.pool.ntp.org"

    aput-object v17, v13, v14

    const-string v17, "2.android.pool.ntp.org"

    aput-object v17, v13, v15

    const-string/jumbo v17, "sg.pool.ntp.org"

    aput-object v17, v13, v16

    new-array v15, v10, [Ljava/lang/String;

    aput-object v9, v15, v12

    const-string v17, "europe.pool.ntp.org"

    aput-object v17, v15, v14

    const-string v17, "2.android.pool.ntp.org"

    const/16 v18, 0x2

    aput-object v17, v15, v18

    const-string v17, "de.pool.ntp.org"

    aput-object v17, v15, v16

    new-array v14, v10, [Ljava/lang/String;

    aput-object v9, v14, v12

    const-string/jumbo v17, "north-america.pool.ntp.org"

    const/16 v19, 0x1

    aput-object v17, v14, v19

    const-string v17, "2.android.pool.ntp.org"

    const/16 v18, 0x2

    aput-object v17, v14, v18

    const-string/jumbo v17, "us.pool.ntp.org"

    aput-object v17, v14, v16

    new-array v12, v10, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v9, v12, v17

    const-string/jumbo v17, "north-america.pool.ntp.org"

    const/16 v19, 0x1

    aput-object v17, v12, v19

    const-string v17, "europe.pool.ntp.org"

    const/16 v18, 0x2

    aput-object v17, v12, v18

    const-string v17, "asia.pool.ntp.org"

    aput-object v17, v12, v16

    sput-object p0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    sget-object v21, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const-string/jumbo v10, "server1"

    invoke-static {v10}, Landroid/util/NtpTrustedTime;->getNtpValue(Ljava/lang/String;)I

    move-result v10

    const/16 v20, 0x0

    aput v10, v21, v20

    sget-object v10, Landroid/util/NtpTrustedTime;->ntpScore:[I

    move-object/from16 v22, v0

    const-string/jumbo v0, "server2"

    invoke-static {v0}, Landroid/util/NtpTrustedTime;->getNtpValue(Ljava/lang/String;)I

    move-result v0

    const/16 v19, 0x1

    aput v0, v10, v19

    sget-object v0, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const-string/jumbo v10, "server3"

    invoke-static {v10}, Landroid/util/NtpTrustedTime;->getNtpValue(Ljava/lang/String;)I

    move-result v10

    const/16 v18, 0x2

    aput v10, v0, v18

    sget-object v0, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const-string/jumbo v10, "server4"

    invoke-static {v10}, Landroid/util/NtpTrustedTime;->getNtpValue(Ljava/lang/String;)I

    move-result v10

    aput v10, v0, v16

    const-string v0, "NtpTrustedTime"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v2

    const-string/jumbo v2, "score = "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/util/NtpTrustedTime;->ntpScore:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v24, 0x1388

    const-string v0, "CHN"

    const-string v2, "HKG"

    const-string v10, "TPE"

    filled-new-array {v0, v2, v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-object v11, Landroid/util/NtpTrustedTime;->ntpServer:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Asia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-object v13, Landroid/util/NtpTrustedTime;->ntpServer:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v2, "Europe"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    sput-object v15, Landroid/util/NtpTrustedTime;->ntpServer:[Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v2, "America"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    sput-object v14, Landroid/util/NtpTrustedTime;->ntpServer:[Ljava/lang/String;

    goto :goto_1

    :cond_4
    sput-object v12, Landroid/util/NtpTrustedTime;->ntpServer:[Ljava/lang/String;

    :goto_1
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/util/NtpData;

    new-instance v0, Landroid/util/NtpData;

    sget-object v10, Landroid/util/NtpTrustedTime;->ntpServer:[Ljava/lang/String;

    const/16 v20, 0x0

    aget-object v10, v10, v20

    sget-object v21, Landroid/util/NtpTrustedTime;->ntpScore:[I

    move-object/from16 v26, v3

    aget v3, v21, v20

    invoke-direct {v0, v10, v3}, Landroid/util/NtpData;-><init>(Ljava/lang/String;I)V

    aput-object v0, v2, v20

    new-instance v0, Landroid/util/NtpData;

    sget-object v3, Landroid/util/NtpTrustedTime;->ntpServer:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v3, v3, v10

    sget-object v19, Landroid/util/NtpTrustedTime;->ntpScore:[I

    move-wide/from16 v27, v4

    aget v4, v19, v10

    invoke-direct {v0, v3, v4}, Landroid/util/NtpData;-><init>(Ljava/lang/String;I)V

    aput-object v0, v2, v10

    new-instance v0, Landroid/util/NtpData;

    sget-object v3, Landroid/util/NtpTrustedTime;->ntpServer:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    sget-object v5, Landroid/util/NtpTrustedTime;->ntpScore:[I

    aget v5, v5, v4

    invoke-direct {v0, v3, v5}, Landroid/util/NtpData;-><init>(Ljava/lang/String;I)V

    aput-object v0, v2, v4

    new-instance v0, Landroid/util/NtpData;

    sget-object v3, Landroid/util/NtpTrustedTime;->ntpServer:[Ljava/lang/String;

    aget-object v3, v3, v16

    sget-object v4, Landroid/util/NtpTrustedTime;->ntpScore:[I

    aget v4, v4, v16

    invoke-direct {v0, v3, v4}, Landroid/util/NtpData;-><init>(Ljava/lang/String;I)V

    aput-object v0, v2, v16

    move-object v0, v2

    const-string v2, "NtpTrustedTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Original order = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/util/NtpTrustedTime$1;

    invoke-direct {v2}, Landroid/util/NtpTrustedTime$1;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    sget-object v2, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-ne v2, v3, :cond_6

    sget-object v2, Landroid/util/NtpTrustedTime;->ntpScore:[I

    aget v2, v2, v4

    sget-object v3, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    if-ne v2, v3, :cond_6

    sget-object v2, Landroid/util/NtpTrustedTime;->ntpScore:[I

    aget v2, v2, v4

    sget-object v3, Landroid/util/NtpTrustedTime;->ntpScore:[I

    aget v3, v3, v16

    if-ne v2, v3, :cond_6

    sget-object v2, Landroid/util/NtpTrustedTime;->ntpScore:[I

    aget v2, v2, v16

    sget-object v3, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move v2, v4

    :cond_5
    new-instance v4, Landroid/util/NtpTrustedTime;

    rem-int/lit8 v5, v2, 0x4

    aget-object v5, v0, v5

    iget-object v5, v5, Landroid/util/NtpData;->serverName:Ljava/lang/String;

    add-int/lit8 v10, v2, 0x1

    const/16 v16, 0x4

    rem-int/lit8 v10, v10, 0x4

    aget-object v10, v0, v10

    iget-object v10, v10, Landroid/util/NtpData;->serverName:Ljava/lang/String;

    add-int/lit8 v18, v2, 0x2

    rem-int/lit8 v18, v18, 0x4

    move-object/from16 v36, v3

    aget-object v3, v0, v18

    iget-object v3, v3, Landroid/util/NtpData;->serverName:Ljava/lang/String;

    add-int/lit8 v18, v2, 0x3

    rem-int/lit8 v18, v18, 0x4

    move/from16 v37, v2

    aget-object v2, v0, v18

    iget-object v2, v2, Landroid/util/NtpData;->serverName:Ljava/lang/String;

    const-wide/16 v34, 0x1388

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v10

    move-object/from16 v32, v3

    move-object/from16 v33, v2

    invoke-direct/range {v29 .. v35}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v4, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    const-string v2, "NtpTrustedTime"

    const-string v3, "All score is same. Follow today number remainder."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    new-instance v2, Landroid/util/NtpTrustedTime;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget-object v3, v3, Landroid/util/NtpData;->serverName:Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, v0, v4

    iget-object v4, v4, Landroid/util/NtpData;->serverName:Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v5, v0, v5

    iget-object v5, v5, Landroid/util/NtpData;->serverName:Ljava/lang/String;

    aget-object v10, v0, v16

    iget-object v10, v10, Landroid/util/NtpData;->serverName:Ljava/lang/String;

    const-wide/16 v34, 0x1388

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move-object/from16 v33, v10

    invoke-direct/range {v29 .. v35}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v2, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    :goto_2
    const-string v2, "NtpTrustedTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Final order = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-object v0, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getNtpValue(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ntp_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "NtpTrustedTime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNtpValue true "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "NtpTrustedTime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNtpValue false "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static setNtpValue(Ljava/lang/String;I)Z
    .locals 3

    sget-object v0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    const/4 p1, 0x5

    :cond_0
    const/4 v0, -0x5

    if-ge p1, v0, :cond_1

    const/4 p1, -0x5

    :cond_1
    sget-object v0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ntp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNtpValue true. Name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_2
    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNtpValue false. Name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4

    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    const-string v0, "NtpTrustedTime"

    const-string v1, "currentTimeMillis() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forceRefresh()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    sget-object v0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/util/NtpTrustedTime;->forceRefresh(Landroid/net/Network;)Z

    move-result v1

    return v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public forceRefresh(Landroid/net/Network;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "NtpTrustedTime"

    const-string v3, "NTP forceRefresh called"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/util/NtpTrustedTime;->currentTime:J

    iget-wide v4, v1, Landroid/util/NtpTrustedTime;->failedTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    iget-wide v4, v1, Landroid/util/NtpTrustedTime;->currentTime:J

    iget-wide v8, v1, Landroid/util/NtpTrustedTime;->failedTime:J

    sub-long/2addr v4, v8

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    iget-wide v4, v1, Landroid/util/NtpTrustedTime;->currentTime:J

    iget-wide v8, v1, Landroid/util/NtpTrustedTime;->failedTime:J

    sub-long/2addr v4, v8

    const-wide/32 v8, 0xea60

    cmp-long v0, v4, v8

    if-gez v0, :cond_1

    const-string v0, "NtpTrustedTime"

    const-string v4, "NTP forceRefresh needs cooling time to avoid watchdog"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    sget-object v0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    const-class v4, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, v1, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, v1, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_3

    :cond_4
    const-string v4, "NtpTrustedTime"

    const-string v5, "forceRefresh() from cache miss"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "persist.ril.ntptrustedtime"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "off"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "NtpTrustedTime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forceRefresh: persist.ril.ntptrustedtime ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    new-instance v5, Landroid/net/SntpClient;

    invoke-direct {v5}, Landroid/net/SntpClient;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, v1, Landroid/util/NtpTrustedTime;->mRetryStep:I

    const-wide/16 v11, 0x2

    const/4 v13, 0x2

    const/4 v14, 0x1

    packed-switch v10, :pswitch_data_0

    move-object v15, v4

    const/4 v3, 0x0

    iput v3, v1, Landroid/util/NtpTrustedTime;->mRetryStep:I

    goto/16 :goto_2

    :pswitch_0
    iget-object v10, v1, Landroid/util/NtpTrustedTime;->mServer4:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, v1, Landroid/util/NtpTrustedTime;->mServer4:Ljava/lang/String;

    move-object v15, v4

    iget-wide v3, v1, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v3, v3

    invoke-virtual {v5, v10, v3, v2, v14}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;ILandroid/net/Network;Z)I

    move-result v3

    const-string/jumbo v4, "server4"

    invoke-static {v4}, Landroid/util/NtpTrustedTime;->getNtpValue(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v13, :cond_6

    iput-boolean v14, v1, Landroid/util/NtpTrustedTime;->mHasCache:Z

    invoke-virtual {v5}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v5}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v5}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v8

    div-long/2addr v8, v11

    iput-wide v8, v1, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    iput-wide v6, v1, Landroid/util/NtpTrustedTime;->failedTime:J

    add-int/2addr v4, v14

    const-string v6, "NtpTrustedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestTime Success from server4:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Landroid/util/NtpTrustedTime;->mServer4:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " mCachedNtpTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " mCachedNtpElapsedRealtime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " mCachedNtpCertainty : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Landroid/util/NtpTrustedTime;->mServer4:Ljava/lang/String;

    invoke-direct {v1, v6, v3}, Landroid/util/NtpTrustedTime;->ReportBigdata(Ljava/lang/String;I)Z

    const-string/jumbo v6, "server4"

    invoke-static {v6, v4}, Landroid/util/NtpTrustedTime;->setNtpValue(Ljava/lang/String;I)Z

    return v14

    :cond_6
    sub-int/2addr v4, v14

    iget-object v8, v1, Landroid/util/NtpTrustedTime;->mServer4:Ljava/lang/String;

    invoke-direct {v1, v8, v3}, Landroid/util/NtpTrustedTime;->ReportBigdata(Ljava/lang/String;I)Z

    const-string/jumbo v8, "server4"

    invoke-static {v8, v4}, Landroid/util/NtpTrustedTime;->setNtpValue(Ljava/lang/String;I)Z

    const-string v8, "NtpTrustedTime"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "requestTime failed. server:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Landroid/util/NtpTrustedTime;->mServer4:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v3

    move v9, v4

    goto :goto_1

    :cond_7
    move-object v15, v4

    :goto_1
    const/4 v3, 0x0

    iput v3, v1, Landroid/util/NtpTrustedTime;->mRetryStep:I

    goto/16 :goto_2

    :pswitch_1
    move-object v15, v4

    iget-object v3, v1, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v1, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    iget-wide v6, v1, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v4, v6

    invoke-virtual {v5, v3, v4, v2, v14}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;ILandroid/net/Network;Z)I

    move-result v3

    const-string/jumbo v4, "server3"

    invoke-static {v4}, Landroid/util/NtpTrustedTime;->getNtpValue(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v13, :cond_8

    iput-boolean v14, v1, Landroid/util/NtpTrustedTime;->mHasCache:Z

    invoke-virtual {v5}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v5}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v5}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v6

    div-long/2addr v6, v11

    iput-wide v6, v1, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    const-wide/16 v6, 0x0

    iput-wide v6, v1, Landroid/util/NtpTrustedTime;->failedTime:J

    add-int/2addr v4, v14

    const-string v6, "NtpTrustedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestTime Success from server3:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " mCachedNtpTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " mCachedNtpElapsedRealtime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " mCachedNtpCertainty : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    invoke-direct {v1, v6, v3}, Landroid/util/NtpTrustedTime;->ReportBigdata(Ljava/lang/String;I)Z

    const-string/jumbo v6, "server3"

    invoke-static {v6, v4}, Landroid/util/NtpTrustedTime;->setNtpValue(Ljava/lang/String;I)Z

    return v14

    :cond_8
    sub-int/2addr v4, v14

    iget-object v6, v1, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    invoke-direct {v1, v6, v3}, Landroid/util/NtpTrustedTime;->ReportBigdata(Ljava/lang/String;I)Z

    const-string/jumbo v6, "server3"

    invoke-static {v6, v4}, Landroid/util/NtpTrustedTime;->setNtpValue(Ljava/lang/String;I)Z

    const-string v6, "NtpTrustedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestTime failed. server:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v3

    move v9, v4

    :cond_9
    const/4 v3, 0x3

    iput v3, v1, Landroid/util/NtpTrustedTime;->mRetryStep:I

    goto/16 :goto_2

    :pswitch_2
    move-object v15, v4

    iget-object v3, v1, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, v1, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    iget-wide v6, v1, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v4, v6

    invoke-virtual {v5, v3, v4, v2, v14}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;ILandroid/net/Network;Z)I

    move-result v3

    const-string/jumbo v4, "server2"

    invoke-static {v4}, Landroid/util/NtpTrustedTime;->getNtpValue(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v13, :cond_a

    iput-boolean v14, v1, Landroid/util/NtpTrustedTime;->mHasCache:Z

    invoke-virtual {v5}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v5}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v5}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v6

    div-long/2addr v6, v11

    iput-wide v6, v1, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    const-wide/16 v6, 0x0

    iput-wide v6, v1, Landroid/util/NtpTrustedTime;->failedTime:J

    add-int/2addr v4, v14

    const-string v6, "NtpTrustedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestTime Success from server2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " mCachedNtpTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " mCachedNtpElapsedRealtime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " mCachedNtpCertainty : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    invoke-direct {v1, v6, v3}, Landroid/util/NtpTrustedTime;->ReportBigdata(Ljava/lang/String;I)Z

    const-string/jumbo v6, "server2"

    invoke-static {v6, v4}, Landroid/util/NtpTrustedTime;->setNtpValue(Ljava/lang/String;I)Z

    return v14

    :cond_a
    sub-int/2addr v4, v14

    iget-object v6, v1, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    invoke-direct {v1, v6, v3}, Landroid/util/NtpTrustedTime;->ReportBigdata(Ljava/lang/String;I)Z

    const-string/jumbo v6, "server2"

    invoke-static {v6, v4}, Landroid/util/NtpTrustedTime;->setNtpValue(Ljava/lang/String;I)Z

    const-string v6, "NtpTrustedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestTime failed. server:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v3

    move v9, v4

    :cond_b
    iput v13, v1, Landroid/util/NtpTrustedTime;->mRetryStep:I

    goto/16 :goto_2

    :pswitch_3
    move-object v15, v4

    iget-object v3, v1, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    iget-wide v6, v1, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v4, v6

    invoke-virtual {v5, v3, v4, v2, v14}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;ILandroid/net/Network;Z)I

    move-result v8

    const-string/jumbo v3, "server1"

    invoke-static {v3}, Landroid/util/NtpTrustedTime;->getNtpValue(Ljava/lang/String;)I

    move-result v3

    if-ne v8, v13, :cond_c

    iput-boolean v14, v1, Landroid/util/NtpTrustedTime;->mHasCache:Z

    invoke-virtual {v5}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v5}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v5}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v6

    div-long/2addr v6, v11

    iput-wide v6, v1, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    const-wide/16 v6, 0x0

    iput-wide v6, v1, Landroid/util/NtpTrustedTime;->failedTime:J

    add-int/2addr v3, v14

    const-string v4, "NtpTrustedTime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestTime Success from server:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mCachedNtpTime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " mCachedNtpElapsedRealtime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " mCachedNtpCertainty : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-direct {v1, v4, v8}, Landroid/util/NtpTrustedTime;->ReportBigdata(Ljava/lang/String;I)Z

    const-string/jumbo v4, "server1"

    invoke-static {v4, v3}, Landroid/util/NtpTrustedTime;->setNtpValue(Ljava/lang/String;I)Z

    return v14

    :cond_c
    add-int/lit8 v9, v3, -0x1

    iget-object v3, v1, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-direct {v1, v3, v8}, Landroid/util/NtpTrustedTime;->ReportBigdata(Ljava/lang/String;I)Z

    const-string/jumbo v3, "server1"

    invoke-static {v3, v9}, Landroid/util/NtpTrustedTime;->setNtpValue(Ljava/lang/String;I)Z

    const-string v3, "NtpTrustedTime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestTime failed. server:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " result = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v14, v1, Landroid/util/NtpTrustedTime;->mRetryStep:I

    nop

    :goto_2
    const-string v3, "NtpTrustedTime"

    const-string v4, "forceRefresh Fail."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Landroid/util/NtpTrustedTime;->failedTime:J

    iget-wide v3, v1, Landroid/util/NtpTrustedTime;->failedTime:J

    iget-wide v6, v1, Landroid/util/NtpTrustedTime;->currentTime:J

    sub-long/2addr v3, v6

    const-wide/16 v6, 0x2710

    cmp-long v3, v3, v6

    if-gez v3, :cond_d

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Landroid/util/NtpTrustedTime;->failedTime:J

    :cond_d
    const/4 v3, 0x0

    return v3

    :cond_e
    :goto_3
    const-string v4, "NtpTrustedTime"

    const-string v5, "forceRefresh: no connectivity"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCacheAge()J
    .locals 4

    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getCacheCertainty()J
    .locals 2

    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getCachedNtpTime()J
    .locals 2

    const-string v0, "NtpTrustedTime"

    const-string v1, "getCachedNtpTime() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2

    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .locals 1

    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method

.method public setNtpInfoInternal(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNtpInfoInternal server "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " timeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const v2, 0x10e00aa

    if-nez p2, :cond_2

    const v3, 0x1040229

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ntp_server"

    invoke-static {v1, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v5, v4

    goto :goto_0

    :cond_1
    move-object v5, v3

    :goto_0
    iput-object v5, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v5, v2

    const-string/jumbo v2, "ntp_timeout"

    invoke-static {v1, v2, v5, v6}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    const-string/jumbo v4, "ntp_timeout"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    iput-object p2, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iput-object p2, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    iput-wide p3, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    :goto_1
    const/4 v2, 0x1

    return v2
.end method
