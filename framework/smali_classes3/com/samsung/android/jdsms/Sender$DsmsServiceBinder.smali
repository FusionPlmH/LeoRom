.class final Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;
.super Ljava/lang/Object;
.source "Sender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/jdsms/Sender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DsmsServiceBinder"
.end annotation


# static fields
.field private static final ACTION_NAME:Ljava/lang/String; = "com.samsung.android.dsms.log"

.field private static final DEFAULT_INTENT:Landroid/content/Intent;

.field private static final DETAIL_KEY:Ljava/lang/String; = "detail"

.field private static final FEATURE_CODE_KEY:Ljava/lang/String; = "feature"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.dsms"

.field private static final TAG:Ljava/lang/String; = "[DSMS-FRAMEWORK][BINDER]"

.field private static final TIMEOUT:J

.field private static final VALUE_KEY:Ljava/lang/String; = "value"


# instance fields
.field private mConnection:Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mIsBound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->TIMEOUT:J

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->DEFAULT_INTENT:Landroid/content/Intent;

    sget-object v0, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->DEFAULT_INTENT:Landroid/content/Intent;

    const-string v1, "com.samsung.android.dsms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->DEFAULT_INTENT:Landroid/content/Intent;

    const-string v1, "com.samsung.android.dsms.log"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->mConnection:Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->mIsBound:Z

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->mContext:Landroid/content/Context;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[DSMS-FRAMEWORK][BINDER] Null context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static formatIntent(Lcom/samsung/android/jdsms/DsmsLog;)Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.dsms.log"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.dsms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/jdsms/DsmsLog;->getFeatureCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "feature"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/jdsms/DsmsLog;->getDetail()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "detail"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/jdsms/DsmsLog;->getValue()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v4, "value"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public bindService()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;-><init>(Lcom/samsung/android/jdsms/Sender$1;)V

    iput-object v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->mConnection:Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;

    iget-object v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->DEFAULT_INTENT:Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->mConnection:Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->mIsBound:Z

    iget-boolean v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->mIsBound:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "[DSMS-FRAMEWORK][BINDER]"

    const-string v2, "Unable to bind to DSMS APK"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->mConnection:Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;

    sget-wide v2, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->TIMEOUT:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;->waitConnection(J)V

    iget-object v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->mConnection:Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;

    invoke-virtual {v0}, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[DSMS-FRAMEWORK][BINDER]"

    const-string v2, "Unable to connect to service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_1
    nop

    iget-object v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->mConnection:Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;

    invoke-virtual {v0}, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;->getDsmsService()Lcom/samsung/android/dsms/aidl/IDsmsService;

    move-result-object v0

    if-eqz v0, :cond_2

    return v4

    :cond_2
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Service was not set"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const-string v1, "[DSMS-FRAMEWORK][BINDER]"

    const-string v2, "Caller does not have permission to access the service or the service can not be found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method public sendMessage(Lcom/samsung/android/jdsms/DsmsLog;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->mConnection:Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;

    invoke-virtual {v0}, Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;->getDsmsService()Lcom/samsung/android/dsms/aidl/IDsmsService;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->formatIntent(Lcom/samsung/android/jdsms/DsmsLog;)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/dsms/aidl/IDsmsService;->sendMessage(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[DSMS-FRAMEWORK][BINDER]"

    const-string v2, "Unexpected error when sending message to DSMS APK"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method public unbindService()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->mIsBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->mConnection:Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->mIsBound:Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->mConnection:Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;

    return-void
.end method
