.class final Landroid/telephony/SemTelephoneManager$ServiceBindHelper;
.super Ljava/lang/Object;
.source "SemTelephoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SemTelephoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceBindHelper"
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.sec.android.phone.action.BIND_INTERNAL_SERVICE"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field private static final STATUS_CONNECTED:I = 0x2

.field private static final STATUS_CONNECTING:I = 0x1

.field private static final STATUS_DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ServiceBindHelper"


# instance fields
.field private mApiRevision:I

.field private mSamsungInternalService:Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private volatile mServiceStatus:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->mServiceStatus:I

    new-instance v0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper$1;

    invoke-direct {v0, p0}, Landroid/telephony/SemTelephoneManager$ServiceBindHelper$1;-><init>(Landroid/telephony/SemTelephoneManager$ServiceBindHelper;)V

    iput-object v0, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0, p1}, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->bindService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/SemTelephoneManager$ServiceBindHelper;)Z
    .locals 1

    invoke-direct {p0}, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->isServiceDisconnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/telephony/SemTelephoneManager$ServiceBindHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->setServiceStatus(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/telephony/SemTelephoneManager$ServiceBindHelper;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;
    .locals 1

    iget-object v0, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->mSamsungInternalService:Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    return-object v0
.end method

.method static synthetic access$402(Landroid/telephony/SemTelephoneManager$ServiceBindHelper;Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;
    .locals 0

    iput-object p1, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->mSamsungInternalService:Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    return-object p1
.end method

.method static synthetic access$502(Landroid/telephony/SemTelephoneManager$ServiceBindHelper;I)I
    .locals 0

    iput p1, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->mApiRevision:I

    return p1
.end method

.method private bindService(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->setServiceStatus(I)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.phone.action.BIND_INTERNAL_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.phone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private isServiceDisconnected()Z
    .locals 1

    iget v0, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->mServiceStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setServiceStatus(I)V
    .locals 3

    const-string v0, "ServiceBindHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serviceStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->mServiceStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->mServiceStatus:I

    return-void
.end method


# virtual methods
.method getApiRevision()I
    .locals 3

    const-string v0, "ServiceBindHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApiRevision : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->mApiRevision:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->mApiRevision:I

    return v0
.end method

.method getServiceApi()Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;
    .locals 3

    const-string v0, "ServiceBindHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServiceApi : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->mSamsungInternalService:Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->mSamsungInternalService:Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    return-object v0
.end method

.method isServiceConnected()Z
    .locals 2

    iget v0, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->mServiceStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isServiceConnecting()Z
    .locals 2

    iget v0, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->mServiceStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method waitToGetConnected()V
    .locals 8

    const-wide/16 v0, 0xfa0

    invoke-virtual {p0}, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->isServiceConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0xfa0

    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v4, "ServiceBindHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "time out "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->mSamsungInternalService:Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    const-string v3, "ServiceBindHelper"

    const-string/jumbo v4, "wait connected"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->isServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ServiceBindHelper"

    const-string/jumbo v3, "not yet bound!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
