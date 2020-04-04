.class Lcom/android/settings/fingerprint/FingerprintSettings$6;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/logging/status/StatusData;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, ""

    move-object v3, v0

    :try_start_0
    const-string v0, "fingerprint"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    move-object v3, v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v4, 0x2012

    invoke-direct {v0, v4}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v6

    const/4 v8, 0x0

    if-ne v6, v7, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v8

    :goto_1
    move v4, v6

    new-instance v6, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v9, 0x2014

    invoke-direct {v6, v9}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v4, :cond_2

    move v9, v7

    goto :goto_2

    :cond_2
    move v9, v8

    :goto_2
    invoke-virtual {v6, v9}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "fingerprint_webpass"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_3

    move v9, v7

    goto :goto_3

    :cond_3
    move v9, v8

    :goto_3
    new-instance v10, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v11, 0x2015

    invoke-direct {v10, v11}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v9, :cond_4

    move v11, v7

    goto :goto_4

    :cond_4
    move v11, v8

    :goto_4
    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "fingerprint_used_samsungaccount"

    invoke-static {v11, v12, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_5

    move v11, v7

    goto :goto_5

    :cond_5
    move v11, v8

    :goto_5
    const/4 v12, 0x0

    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v13

    const-string v14, "com.osp.app.signin"

    invoke-virtual {v13, v14}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v14

    array-length v15, v14

    if-lez v15, :cond_6

    const/4 v12, 0x1

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    :goto_6
    new-instance v15, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v7, 0x2013

    invoke-direct {v15, v7}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v11, :cond_7

    if-eqz v12, :cond_7

    const/4 v7, 0x1

    goto :goto_7

    :cond_7
    move v7, v8

    :goto_7
    invoke-virtual {v15, v7}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isSideSensor()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-static {v1, v7}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->getFingerprintAlwaysOnValue(Landroid/content/Context;I)Z

    move-result v7

    new-instance v9, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v10, 0x204b

    invoke-direct {v9, v10}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v4, :cond_9

    if-eqz v7, :cond_9

    const/4 v10, 0x1

    goto :goto_8

    :cond_9
    move v10, v8

    :goto_8
    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isDispaySensor()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-static {v1, v7}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->getFingerprintAdaptiveIconValue(Landroid/content/Context;I)Z

    move-result v7

    new-instance v9, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v10, 0x204c

    invoke-direct {v9, v10}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v4, :cond_b

    if-eqz v7, :cond_b

    const/4 v8, 0x1

    nop

    :cond_b
    invoke-virtual {v9, v8}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    return-object v2
.end method
