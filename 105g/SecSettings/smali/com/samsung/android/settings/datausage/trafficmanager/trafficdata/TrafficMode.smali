.class public Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;
.super Ljava/lang/Object;
.source "TrafficMode.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCurrentTime:J

.field private mEndTime:J

.field private mFreePercent:F

.field private mFreeWarningValue:I

.field private mIsBlockData:Z

.field private mIsExceed:Z

.field private mLoadFinihsed:Z

.field private mMiddleData:J

.field private mMiddleTime:J

.field private mRemainTraffic:Ljava/lang/String;

.field private mSettingOn:Z

.field private mStartDay:I

.field private mStartTime:J

.field private mTodayEndTime:J

.field private mTodayStartTime:J

.field private mTodayused:Ljava/lang/String;

.field private mTotalDataBytes:J

.field private mTotalTraffic:Ljava/lang/String;

.field private mTrafficUsed:Ljava/lang/String;

.field private mTrafficUsedBytes:J

.field private mWarningValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TrafficMode"

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->initValue()V

    return-void
.end method

.method private getCalAt(III)Ljava/util/Calendar;
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez p2, :cond_0

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_0
    if-gt p2, v1, :cond_1

    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_1
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    :goto_0
    const/4 v2, 0x5

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method private initValue()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mSettingOn:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mIsBlockData:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mLoadFinihsed:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mIsExceed:Z

    const-string v0, "max"

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTotalTraffic:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTrafficUsed:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTodayused:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mRemainTraffic:Ljava/lang/String;

    const-string v0, "off"

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mWarningValue:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTotalDataBytes:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTrafficUsedBytes:J

    const/high16 v2, 0x42480000    # 50.0f

    iput v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mFreePercent:F

    const/16 v2, 0x28

    iput v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mFreeWarningValue:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mStartDay:I

    iput-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mStartTime:J

    iput-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mMiddleTime:J

    iput-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mMiddleData:J

    iput-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mCurrentTime:J

    iput-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTodayStartTime:J

    iput-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mEndTime:J

    iput-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTodayEndTime:J

    return-void
.end method


# virtual methods
.method protected getPreferenceValue(Landroid/content/SharedPreferences;I)V
    .locals 10

    const-string v0, "TrafficMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restrict_data_check_box"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mIsBlockData:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switch_traffic_settings"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mSettingOn:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set_data_limit"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "max"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTotalTraffic:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "total_used"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTrafficUsedBytes:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check_time"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-interface {p1, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mMiddleTime:J

    const v0, 0x49742400    # 1000000.0f

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data_used_by_check_time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mMiddleData:J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "TrafficMode/getPreferenceValue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data_used_by_check_time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0.00"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v6, v0

    float-to-long v6, v6

    iput-wide v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mMiddleData:J

    const-string v6, "TrafficMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "middleDataStr: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", mMiddleData: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mMiddleData:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set_package_start_date"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mStartDay:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data_warning_set"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "off"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mWarningValue:Ljava/lang/String;

    const-string v4, "off"

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mWarningValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_0

    iput v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mFreeWarningValue:I

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mWarningValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mFreeWarningValue:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v6, "TrafficMode/parseInt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mFreeWarningValue:I

    :goto_1
    iget-boolean v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mSettingOn:Z

    if-nez v4, :cond_1

    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTotalDataBytes:J

    goto :goto_2

    :cond_1
    const-string v4, "max"

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTotalTraffic:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTotalDataBytes:J

    iput-boolean v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mSettingOn:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mIsBlockData:Z

    goto :goto_2

    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTotalTraffic:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    mul-float/2addr v4, v0

    float-to-long v4, v4

    iput-wide v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTotalDataBytes:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v4, "TrafficMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTotalDataBytes:J

    iput-boolean v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mSettingOn:Z

    :goto_2
    const-string v0, "TrafficMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsBlockData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mIsBlockData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TrafficMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSettingOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mSettingOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TrafficMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFreeWarningValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mFreeWarningValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected getTheRealTime()V
    .locals 15

    const-string v0, "TrafficMode"

    const-string v1, "getTheTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mCurrentTime:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mCurrentTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mStartDay:I

    if-lt v7, v8, :cond_0

    iget v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mStartDay:I

    invoke-direct {p0, v3, v5, v8}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getCalAt(III)Ljava/util/Calendar;

    move-result-object v8

    goto :goto_0

    :cond_0
    add-int/lit8 v8, v5, -0x1

    iget v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mStartDay:I

    invoke-direct {p0, v3, v8, v9}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getCalAt(III)Ljava/util/Calendar;

    move-result-object v8

    :goto_0
    const-string v9, "TrafficMode"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calStart : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mStartTime:J

    iget-wide v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mMiddleTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    iget-wide v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mMiddleTime:J

    iget-wide v13, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mStartTime:J

    cmp-long v9, v9, v13

    if-gez v9, :cond_1

    iput-wide v11, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mMiddleTime:J

    :cond_1
    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-direct {p0, v9, v4, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getCalAt(III)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mEndTime:J

    const-string v4, "TrafficMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calEnd : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3, v5, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->getCalAt(III)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTodayStartTime:J

    iget-wide v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTodayStartTime:J

    const-wide/32 v11, 0x5265c00

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTodayEndTime:J

    const-string v4, "TrafficMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mTodayStartTime:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTodayStartTime:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "TrafficMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCurrentTime:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mCurrentTime:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getmEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mEndTime:J

    return-wide v0
.end method

.method public getmFreePercent()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mFreePercent:F

    return v0
.end method

.method public getmFreeWarningValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mFreeWarningValue:I

    return v0
.end method

.method public getmMiddleData()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mMiddleData:J

    return-wide v0
.end method

.method public getmMiddleTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mMiddleTime:J

    return-wide v0
.end method

.method public getmRemainTraffic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mRemainTraffic:Ljava/lang/String;

    return-object v0
.end method

.method public getmStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mStartTime:J

    return-wide v0
.end method

.method public getmTodayused()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTodayused:Ljava/lang/String;

    return-object v0
.end method

.method public getmTotalDataBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTotalDataBytes:J

    return-wide v0
.end method

.method public getmTotalTraffic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTotalTraffic:Ljava/lang/String;

    return-object v0
.end method

.method public getmTrafficUsed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTrafficUsed:Ljava/lang/String;

    return-object v0
.end method

.method public getmTrafficUsedBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTrafficUsedBytes:J

    return-wide v0
.end method

.method public ismIsExceed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mIsExceed:Z

    return v0
.end method

.method public ismSettingOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mSettingOn:Z

    return v0
.end method

.method public setmSettingOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mSettingOn:Z

    return-void
.end method

.method public setmTotalDataBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTotalDataBytes:J

    return-void
.end method

.method public setmTotalTraffic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTotalTraffic:Ljava/lang/String;

    return-void
.end method

.method public updateDateInfomationInner(Landroid/content/Context;Landroid/net/NetworkStatsHistory;Landroid/net/NetworkStatsHistory$Entry;Landroid/content/SharedPreferences;I)V
    .locals 20
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-wide/16 v11, 0x0

    iget-wide v3, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mStartTime:J

    iget-wide v5, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mMiddleTime:J

    cmp-long v0, v3, v5

    const-wide/16 v13, 0x0

    if-lez v0, :cond_2

    if-eqz p2, :cond_0

    iget-wide v4, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mStartTime:J

    iget-wide v6, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mEndTime:J

    iget-wide v8, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mCurrentTime:J

    const/4 v10, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p3

    :goto_0
    if-eqz v0, :cond_1

    iget-wide v3, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v5, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v3, v5

    goto :goto_1

    :cond_1
    move-wide v3, v13

    :goto_1
    move-object/from16 v12, p4

    move/from16 v11, p5

    move-wide v13, v3

    goto/16 :goto_6

    :cond_2
    if-eqz p2, :cond_3

    iget-wide v4, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mStartTime:J

    iget-wide v6, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mEndTime:J

    iget-wide v8, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mCurrentTime:J

    const/4 v10, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    :cond_3
    move-object/from16 v3, p3

    :goto_2
    if-eqz v3, :cond_4

    iget-wide v4, v3, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v3, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v6

    goto :goto_3

    :cond_4
    move-wide v4, v13

    :goto_3
    move-wide v6, v13

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "middle_real_value"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v11, p5

    :try_start_1
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v12, p4

    :try_start_2
    invoke-interface {v12, v0, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-wide v6, v8

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v12, p4

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v12, p4

    move/from16 v11, p5

    :goto_4
    const-string v8, "TrafficMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception happend:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    sub-long v8, v4, v6

    iget-wide v13, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mMiddleData:J

    add-long v4, v8, v13

    move-object v0, v3

    move-wide v13, v4

    :goto_6
    iput-wide v13, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTrafficUsedBytes:J

    iget-wide v3, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTrafficUsedBytes:J

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTrafficUsed:Ljava/lang/String;

    const/4 v15, 0x0

    if-eqz p2, :cond_5

    iget-wide v4, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTodayStartTime:J

    iget-wide v6, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTodayEndTime:J

    iget-wide v8, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mCurrentTime:J

    const/4 v10, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v15

    :cond_5
    move-object v3, v15

    if-eqz v3, :cond_6

    iget-wide v4, v3, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v3, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v6

    goto :goto_7

    :cond_6
    const-wide/16 v4, 0x0

    :goto_7
    invoke-static {v2, v4, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTodayused:Ljava/lang/String;

    iget-wide v6, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTotalDataBytes:J

    iget-wide v8, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTrafficUsedBytes:J

    sub-long v8, v6, v8

    const-string v10, "TrafficMode"

    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    const-string/jumbo v3, "todayBytes:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TrafficMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "total:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TrafficMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mTodayused:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTodayused:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TrafficMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mTrafficUsedBytes:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v18, v4

    iget-wide v4, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTrafficUsedBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TrafficMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTrafficUsed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTrafficUsed:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TrafficMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRemainData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mIsExceed:Z

    iget-wide v3, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTrafficUsedBytes:J

    cmp-long v0, v6, v3

    if-gez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mIsExceed:Z

    iget-wide v3, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTrafficUsedBytes:J

    sub-long/2addr v3, v6

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mRemainTraffic:Ljava/lang/String;

    const-wide/16 v8, 0x0

    goto :goto_8

    :cond_7
    invoke-static {v2, v8, v9}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mRemainTraffic:Ljava/lang/String;

    :goto_8
    const-wide/16 v3, 0x0

    cmp-long v0, v6, v3

    if-lez v0, :cond_8

    long-to-float v0, v8

    long-to-float v3, v6

    div-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    iput v0, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mFreePercent:F

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    iput v0, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mFreePercent:F

    :goto_9
    const-string v0, "TrafficMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFreePercent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mFreePercent:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateSettingsSystemForSmartManagerInner(Landroid/content/Context;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switch_traffic_settings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mSettingOn:Z

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "total_used"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficMode;->mTrafficUsedBytes:J

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method
