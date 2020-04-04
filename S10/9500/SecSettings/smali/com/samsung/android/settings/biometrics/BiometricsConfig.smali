.class public Lcom/samsung/android/settings/biometrics/BiometricsConfig;
.super Ljava/lang/Object;
.source "BiometricsConfig.java"


# static fields
.field private static mFailedBackupAttempts:I

.field private static mRemaingTimeToUnlock:J


# direct methods
.method public static declared-synchronized getBiometricsBackupTypeDB(Landroid/content/Context;)I
    .locals 4

    const-class v0, Lcom/samsung/android/settings/biometrics/BiometricsConfig;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "biometrics_backup_type"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getBiometricsFailedAttempts(Landroid/content/Context;)I
    .locals 4

    const-class v0, Lcom/samsung/android/settings/biometrics/BiometricsConfig;

    monitor-enter v0

    :try_start_0
    const-string v1, "BiometricsConfig"

    const-string v2, "getBiometricsFailedAttempts Called"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "biometrics_failed_attempt"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getRemaingTimeToUnlock(Landroid/content/Context;)J
    .locals 9

    const-class v0, Lcom/samsung/android/settings/biometrics/BiometricsConfig;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "biometrics_remaining_time"

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J

    const-wide/16 v1, 0x0

    sget-wide v5, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J

    cmp-long v5, v5, v3

    if-eqz v5, :cond_0

    sget-wide v5, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v1, v5, v7

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    sput-wide v3, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x0

    :cond_0
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isSamsungAccountSignedIn(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    const-string v2, "BiometricsConfig"

    const-string v3, "isSamsungAccountSignedIn() - true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    const-string v2, "BiometricsConfig"

    const-string v3, "isSamsungAccountSignedIn() - false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method public static declared-synchronized reportFailedBiometricsAttempts(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/samsung/android/settings/biometrics/BiometricsConfig;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mFailedBackupAttempts:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mFailedBackupAttempts:I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "biometrics_failed_attempt"

    sget v3, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mFailedBackupAttempts:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget v1, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mFailedBackupAttempts:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->setRemaingTimeToUnlock(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized resetFailedBiometricsBackupAttempts(Landroid/content/Context;)V
    .locals 5

    const-class v0, Lcom/samsung/android/settings/biometrics/BiometricsConfig;

    monitor-enter v0

    :try_start_0
    const-string v1, "BiometricsConfig"

    const-string v2, "resetFailedBiometricsBackupAttempts Called"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sput v1, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mFailedBackupAttempts:I

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "biometrics_failed_attempt"

    sget v3, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mFailedBackupAttempts:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "biometrics_remaining_time"

    sget-wide v3, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setBiometricsBackupTypeDB(Landroid/content/Context;I)Z
    .locals 5

    const-class v0, Lcom/samsung/android/settings/biometrics/BiometricsConfig;

    monitor-enter v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    :try_start_0
    const-string v1, "BiometricsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBiometricsBackupTypeDB : wrong backup type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "biometrics_backup_type"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    const-string v2, "BiometricsConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBiometricsBackupTypeDB : result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " | Backup Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getBiometricsBackupTypeDB(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setRemaingTimeToUnlock(Landroid/content/Context;)V
    .locals 5

    const-class v0, Lcom/samsung/android/settings/biometrics/BiometricsConfig;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mFailedBackupAttempts:I

    if-eqz v1, :cond_0

    sget v1, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mFailedBackupAttempts:I

    rem-int/lit8 v1, v1, 0x5

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    add-long/2addr v1, v3

    sput-wide v1, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "biometrics_remaining_time"

    sget-wide v3, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->mRemaingTimeToUnlock:J

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
