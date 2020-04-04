.class public Lcom/samsung/android/settings/logging/LoggingHelper;
.super Ljava/lang/Object;
.source "LoggingHelper.java"


# static fields
.field private static sSaInstance:Lcom/samsung/android/settings/logging/SALogging;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/logging/LoggingHelper;->sSaInstance:Lcom/samsung/android/settings/logging/SALogging;

    return-void
.end method

.method private static getSEPVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.feature.samsung_experience_mobile"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v2, 0x138e4

    if-lt v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    div-int/lit16 v1, v1, 0x2710

    sget v2, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    rem-int/lit16 v2, v2, 0x2710

    div-int/lit8 v2, v2, 0x64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 2

    const-string v0, "Settings_SA"

    const-string v1, "Settings LoggingHelper init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;-><init>()V

    const-string v1, "759-399-5199102"

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setTrackingId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->getSEPVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setVersion(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId()Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->setConfiguration(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    invoke-static {p0}, Lcom/samsung/android/settings/logging/SALogging;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/logging/SALogging;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/logging/LoggingHelper;->sSaInstance:Lcom/samsung/android/settings/logging/SALogging;

    sget-object v0, Lcom/samsung/android/settings/logging/LoggingHelper;->sSaInstance:Lcom/samsung/android/settings/logging/SALogging;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/logging/SALogging;->gettingData(Landroid/content/Context;)V

    return-void
.end method

.method public static insertEnteranceLogging(II)V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/logging/LoggingHelper;->sSaInstance:Lcom/samsung/android/settings/logging/SALogging;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2328

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertEventLogging(II)V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/logging/LoggingHelper;->sSaInstance:Lcom/samsung/android/settings/logging/SALogging;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertEventLogging(IIJ)V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/logging/LoggingHelper;->sSaInstance:Lcom/samsung/android/settings/logging/SALogging;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static insertEventLogging(IILjava/lang/String;J)V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/logging/LoggingHelper;->sSaInstance:Lcom/samsung/android/settings/logging/SALogging;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p3, p4}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static insertEventLogging(IIZ)V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/logging/LoggingHelper;->sSaInstance:Lcom/samsung/android/settings/logging/SALogging;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v2, "1000"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertEventLogging(ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/logging/LoggingHelper;->sSaInstance:Lcom/samsung/android/settings/logging/SALogging;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/logging/LoggingHelper;->sSaInstance:Lcom/samsung/android/settings/logging/SALogging;

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/logging/LoggingHelper;->sSaInstance:Lcom/samsung/android/settings/logging/SALogging;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertFlowLogging(I)V
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/logging/LoggingHelper;->sSaInstance:Lcom/samsung/android/settings/logging/SALogging;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void
.end method
