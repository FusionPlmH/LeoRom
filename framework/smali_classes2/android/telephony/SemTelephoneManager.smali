.class public final Landroid/telephony/SemTelephoneManager;
.super Ljava/lang/Object;
.source "SemTelephoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SemTelephoneManager$ServiceBindHelper;,
        Landroid/telephony/SemTelephoneManager$CsgInfo;,
        Landroid/telephony/SemTelephoneManager$OperatorInfo;,
        Landroid/telephony/SemTelephoneManager$NetworkInfo;,
        Landroid/telephony/SemTelephoneManager$CallBarringInfo;,
        Landroid/telephony/SemTelephoneManager$ClirConstants;,
        Landroid/telephony/SemTelephoneManager$CallForwardingConstants;,
        Landroid/telephony/SemTelephoneManager$CallBarringConstants;,
        Landroid/telephony/SemTelephoneManager$OnTriResultListener;,
        Landroid/telephony/SemTelephoneManager$OnBiResultListener;,
        Landroid/telephony/SemTelephoneManager$OnResultListener;,
        Landroid/telephony/SemTelephoneManager$OnCompleteListener;,
        Landroid/telephony/SemTelephoneManager$CallState;
    }
.end annotation


# static fields
.field private static final API_REV_2018102701:I = 0x7849cdad

.field private static final API_REV_2018102901:I = 0x7849ce75

.field private static final API_REV_2018110301:I = 0x7849eb5d

.field private static final API_REV_2018111401:I = 0x7849efa9

.field public static final DEFAULT_SLOT_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SemTelephoneManager"

.field private static final sHandlerThread:Landroid/os/HandlerThread;

.field private static final sMainHandler:Landroid/os/Handler;

.field private static volatile sServiceBindHelper:Landroid/telephony/SemTelephoneManager$ServiceBindHelper;

.field private static final sWorkerHandler:Landroid/os/Handler;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/telephony/SemTelephoneManager;->sMainHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemTelephoneManager"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/SemTelephoneManager;->sHandlerThread:Landroid/os/HandlerThread;

    sget-object v0, Landroid/telephony/SemTelephoneManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Landroid/telephony/SemTelephoneManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/telephony/SemTelephoneManager;->sWorkerHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1200(Landroid/telephony/SemTelephoneManager;ZLjava/util/List;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnTriResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/SemTelephoneManager;->handleCallForwardingCallback(ZLjava/util/List;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnTriResultListener;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createIcBarringResultListener(Landroid/telephony/SemTelephoneManager$OnResultListener;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "[",
            "Landroid/telephony/SemTelephoneManager$CallBarringInfo;",
            ">;)",
            "Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;"
        }
    .end annotation

    new-instance v0, Landroid/telephony/SemTelephoneManager$11;

    invoke-direct {v0, p0, p1}, Landroid/telephony/SemTelephoneManager$11;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    return-object v0
.end method

.method private static getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;
    .locals 3

    invoke-static {}, Landroid/telephony/SemTelephoneManager;->needToReconnect()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Landroid/telephony/SemTelephoneManager;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/telephony/SemTelephoneManager;->needToReconnect()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SemTelephoneManager"

    const-string v2, "ServiceBindHelper"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;

    invoke-direct {v1, p0}, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/telephony/SemTelephoneManager;->sServiceBindHelper:Landroid/telephony/SemTelephoneManager$ServiceBindHelper;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Landroid/telephony/SemTelephoneManager;->sServiceBindHelper:Landroid/telephony/SemTelephoneManager$ServiceBindHelper;

    invoke-virtual {v0}, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->waitToGetConnected()V

    sget-object v0, Landroid/telephony/SemTelephoneManager;->sServiceBindHelper:Landroid/telephony/SemTelephoneManager$ServiceBindHelper;

    invoke-virtual {v0}, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->getServiceApi()Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    return-object v0
.end method

.method private handleCallForwardingCallback(ZLjava/util/List;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnTriResultListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/telephony/SemTelephoneManager$OnTriResultListener<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SemTelephoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCallForwardingCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    move v1, v0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$L8KkCKXXIGnEUAVTE6P7qAxuJTo;

    move-object v2, v0

    move-object v3, p4

    move v4, p1

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Landroid/telephony/-$$Lambda$SemTelephoneManager$L8KkCKXXIGnEUAVTE6P7qAxuJTo;-><init>(Landroid/telephony/SemTelephoneManager$OnTriResultListener;ZIILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$wdIkdjpQNYzbw_9MbIKzZR8-h3w;

    invoke-direct {v0, p4, p1, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$wdIkdjpQNYzbw_9MbIKzZR8-h3w;-><init>(Landroid/telephony/SemTelephoneManager$OnTriResultListener;ZLjava/lang/String;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_2

    :goto_1
    nop

    const-string v2, "SemTelephoneManager"

    const-string/jumbo v3, "handleCallForwardingCallback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Landroid/telephony/-$$Lambda$SemTelephoneManager$AEEqgk_WhtBl22VDZgE2WBlyYis;

    invoke-direct {v2, p4, p1, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$AEEqgk_WhtBl22VDZgE2WBlyYis;-><init>(Landroid/telephony/SemTelephoneManager$OnTriResultListener;ZLjava/lang/String;)V

    invoke-static {v2}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method static synthetic lambda$changeCallBarringPassword$47(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$changeCallBarringPassword$48(Landroid/telephony/SemTelephoneManager;ILjava/lang/String;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$10;

    invoke-direct {v1, p0, p4}, Landroid/telephony/SemTelephoneManager$10;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "changeCallBarringPassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$CbAJThySIvASNkVOsW8zoBm1VOA;

    invoke-direct {v1, p4, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$CbAJThySIvASNkVOsW8zoBm1VOA;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$changeIccFdnPassword$29(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$changeIccFdnPassword$30(Landroid/telephony/SemTelephoneManager;ILjava/lang/String;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$4;

    invoke-direct {v1, p0, p4}, Landroid/telephony/SemTelephoneManager$4;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->changeIccFdnPassword(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "changeIccFdnPassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p4, :cond_0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$Ix3Cr9hEkLTtAH1AGa7VS9E-taY;

    invoke-direct {v1, p4, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$Ix3Cr9hEkLTtAH1AGa7VS9E-taY;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$changeIccFdnPasswordBySupplyPuk2$31(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$changeIccFdnPasswordBySupplyPuk2$32(Landroid/telephony/SemTelephoneManager;ILjava/lang/String;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$5;

    invoke-direct {v1, p0, p4}, Landroid/telephony/SemTelephoneManager$5;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->supplyIccPuk2(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "changeIccFdnPasswordBySupplyPuk2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p4, :cond_0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$F4MN3dg_lsqwN9bvSufiE6zsVYY;

    invoke-direct {v1, p4, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$F4MN3dg_lsqwN9bvSufiE6zsVYY;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic lambda$exitEmergencyCallbackMode$152(Landroid/telephony/SemTelephoneManager;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->exitEmergencyCallbackMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "exitEmergencyMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$getActiveFgCall$64(Landroid/telephony/SemTelephoneManager$OnResultListener;Landroid/telephony/SemTelephoneManager$CallState;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getActiveFgCall$65(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    sget-object v0, Landroid/telephony/SemTelephoneManager$CallState;->IDLE:Landroid/telephony/SemTelephoneManager$CallState;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getActiveFgCall$66(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getActiveFgCallState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager$CallState;->valueOf(Ljava/lang/String;)Landroid/telephony/SemTelephoneManager$CallState;

    move-result-object v1

    new-instance v2, Landroid/telephony/-$$Lambda$SemTelephoneManager$CbU17c1YgCrsv8iyKIMvbXs5j-g;

    invoke-direct {v2, p1, v1}, Landroid/telephony/-$$Lambda$SemTelephoneManager$CbU17c1YgCrsv8iyKIMvbXs5j-g;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Landroid/telephony/SemTelephoneManager$CallState;)V

    invoke-static {v2}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "getActiveFgCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$G-15BJE4XFAon33jSle2V5uXVe4;

    invoke-direct {v1, p1, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$G-15BJE4XFAon33jSle2V5uXVe4;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getAvailableNetworkList$109(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getAvailableNetworkList$110(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$25;

    invoke-direct {v1, p0, p2}, Landroid/telephony/SemTelephoneManager$25;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryAvailableNetwork(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "getAvailableNetworkList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$glbnzDnnMVLeftnTAjut57YNjnI;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$glbnzDnnMVLeftnTAjut57YNjnI;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getCallForwardingOption$53(Landroid/telephony/SemTelephoneManager$OnTriResultListener;Ljava/lang/Exception;)V
    .locals 7

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Landroid/telephony/SemTelephoneManager$OnTriResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getCallForwardingOption$54(Landroid/telephony/SemTelephoneManager;IZILandroid/telephony/SemTelephoneManager$OnTriResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$12;

    invoke-direct {v1, p0, p4}, Landroid/telephony/SemTelephoneManager$12;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnTriResultListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryCallForwardingOption(IZILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "getCallForwardingOption"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$XWOt_gmDgGE7I-xQTeCU-pLkeuE;

    invoke-direct {v1, p4, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$XWOt_gmDgGE7I-xQTeCU-pLkeuE;-><init>(Landroid/telephony/SemTelephoneManager$OnTriResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getCallState$67(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getCallState$68(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "IDLE"

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getCallState$69(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    const v0, 0x7849cdad

    :try_start_0
    invoke-direct {p0, v0}, Landroid/telephony/SemTelephoneManager;->requireApiRevision(I)V

    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getCallState()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$vXkmm3yQ82Y0KYHVLMZM2p08cZs;

    invoke-direct {v1, p1, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$vXkmm3yQ82Y0KYHVLMZM2p08cZs;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "getCallState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$sXJs62g8INvVaAGvTJUaQhycnvQ;

    invoke-direct {v1, p1, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$sXJs62g8INvVaAGvTJUaQhycnvQ;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Throwable;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getCallingLineIdentificationRestriction$143(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getCallingLineIdentificationRestriction$144(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$33;

    invoke-direct {v1, p0, p2}, Landroid/telephony/SemTelephoneManager$33;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryOutGoingCallerIdDisplay(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "getCallingLineIdentificationRestriction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$jiMejqz66ckScwamcykFEyQhMHQ;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$jiMejqz66ckScwamcykFEyQhMHQ;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getCdmaRoamingPreference$105(Landroid/telephony/SemTelephoneManager$OnBiResultListener;Ljava/lang/Exception;)V
    .locals 4

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/telephony/SemTelephoneManager$OnBiResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getCdmaRoamingPreference$106(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnBiResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$23;

    invoke-direct {v1, p0, p2}, Landroid/telephony/SemTelephoneManager$23;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnBiResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryCdmaRoamingPreference(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "getCdmaRoamingPreference"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$0wcbrgjKQAc3t_NfmVY1cu-arLc;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$0wcbrgjKQAc3t_NfmVY1cu-arLc;-><init>(Landroid/telephony/SemTelephoneManager$OnBiResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getCsgList$113(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getCsgList$114(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$27;

    invoke-direct {v1, p0, p2}, Landroid/telephony/SemTelephoneManager$27;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryAvailableCsg(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "getAvailableNetworkList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$LsgdT1wx_zhy-CKkbNDB-4iMB6k;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$LsgdT1wx_zhy-CKkbNDB-4iMB6k;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getEnhancedVoicePrivacy$60(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getEnhancedVoicePrivacy$61(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$14;

    invoke-direct {v1, p0, p2}, Landroid/telephony/SemTelephoneManager$14;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryEnhancedVoicePrivacy(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "getEnhancedVoicePrivacy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$u88PutHzqe43_dAram9GjRKIZIc;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$u88PutHzqe43_dAram9GjRKIZIc;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getIccPersoSubState$33(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getIccPersoSubState$34(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getIccPersoSubState$35(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getIccPersoSubStateAsString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$NP-wd-x8gsFFsdWbqdUKrbUA1IU;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$NP-wd-x8gsFFsdWbqdUKrbUA1IU;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "getIccPersoSubState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$TU1yCrqIjg6S0vUKFtGVPU8zNIg;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$TU1yCrqIjg6S0vUKFtGVPU8zNIg;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$getIccPin2Blocked$10(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->isIccPin2Blocked(I)Z

    move-result v0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$wlUFUy39TJ5y1yuSlzFOI5-CKYk;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$wlUFUy39TJ5y1yuSlzFOI5-CKYk;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Z)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "getIccPin2RetryCount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$y-fzj_34irPI5wORD2V8FLV-kOc;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$y-fzj_34irPI5wORD2V8FLV-kOc;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getIccPin2Blocked$8(Landroid/telephony/SemTelephoneManager$OnResultListener;Z)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getIccPin2Blocked$9(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getIccPin2RetryCount$5(Landroid/telephony/SemTelephoneManager$OnResultListener;I)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getIccPin2RetryCount$6(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getIccPin2RetryCount$7(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getIccPin2RetryCount(I)I

    move-result v0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$y-O3D2KzKR3kYRjb84861QMI4O0;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$y-O3D2KzKR3kYRjb84861QMI4O0;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;I)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "getIccPin2RetryCount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$2ACHVTSiM4OkBvyPG7XNBP2iQoc;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$2ACHVTSiM4OkBvyPG7XNBP2iQoc;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getIccPuk2RetryCount$11(Landroid/telephony/SemTelephoneManager$OnResultListener;I)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getIccPuk2RetryCount$12(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getIccPuk2RetryCount$13(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getIccPuk2retryCount(I)I

    move-result v0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$wr4vI61HexPpEGvPeExUrn7iaGE;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$wr4vI61HexPpEGvPeExUrn7iaGE;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;I)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "getIccPuk2RetryCount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$wrAZg7asdkWBlAscmfmvs6ZLMrA;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$wrAZg7asdkWBlAscmfmvs6ZLMrA;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getIccSerialNumber$137(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getIccSerialNumber$138(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getIccSerialNumber$139(Landroid/telephony/SemTelephoneManager;IZLandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getIccSerialNumber(IZ)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$1APem79YPQlHGNSRQcdcSjSmYH8;

    invoke-direct {v1, p3, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$1APem79YPQlHGNSRQcdcSjSmYH8;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "getIccSerialNumber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$xSK6nuhXFbcVLGY5R7D5VN_86_8;

    invoke-direct {v1, p3, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$xSK6nuhXFbcVLGY5R7D5VN_86_8;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getIncomingCallBarringInfoList$49(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/telephony/SemTelephoneManager$CallBarringInfo;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getIncomingCallBarringInfoList$50(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-direct {p0, p2}, Landroid/telephony/SemTelephoneManager;->createIcBarringResultListener(Landroid/telephony/SemTelephoneManager$OnResultListener;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryIcBarring(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "getIncomingCallBarringInfoList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$qT_FWUxrx0t8tR8l6ZRTmVysG3c;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$qT_FWUxrx0t8tR8l6ZRTmVysG3c;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getLine1Number$36(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getLine1Number$37(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getLine1Number$38(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$T12J5-ADwCJsYYWd5NJ3tLf21nQ;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$T12J5-ADwCJsYYWd5NJ3tLf21nQ;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "getLine1Number"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$YeCJwFY8XLPWp5qHjbfLKQoG8Qs;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$YeCJwFY8XLPWp5qHjbfLKQoG8Qs;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getLteOnCdmaMode$79(Landroid/telephony/SemTelephoneManager$OnResultListener;I)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getLteOnCdmaMode$80(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getLteOnCdmaMode$81(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getLteOnCdmaMode(I)I

    move-result v0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$GKlZaWQ3mVb-oyJgs_ptcD6WdSw;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$GKlZaWQ3mVb-oyJgs_ptcD6WdSw;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;I)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "getLteOnCdmaMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$n5PYLvEoOYYNZeAJwcYosNdX4S0;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$n5PYLvEoOYYNZeAJwcYosNdX4S0;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getMvnoName$129(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getMvnoName$130(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getMvnoName$131(Landroid/telephony/SemTelephoneManager;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getMvnoName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$ppq0YROt2RrDagTKYUsPg3Vj1Jw;

    invoke-direct {v1, p3, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$ppq0YROt2RrDagTKYUsPg3Vj1Jw;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "queryNvmoName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$YFnl_txUtKxYC4UADDEgKMH3YfY;

    invoke-direct {v1, p3, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$YFnl_txUtKxYC4UADDEgKMH3YfY;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getPreferredNetworkInfoList$91(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getPreferredNetworkInfoList$92(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$16;

    invoke-direct {v1, p0, p2}, Landroid/telephony/SemTelephoneManager$16;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryPreferredNetworkList(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "getPreferredNetworkInfoList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$njet_kh3DUF7BJkS2oyOHkyDCHE;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$njet_kh3DUF7BJkS2oyOHkyDCHE;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getPreferredNetworkType$95(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getPreferredNetworkType$96(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$18;

    invoke-direct {v1, p0, p2}, Landroid/telephony/SemTelephoneManager$18;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryPreferredNetworkType(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "getPreferredNetworkType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$eGYy_XT50s58w9BykgJWcSAIqb8;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$eGYy_XT50s58w9BykgJWcSAIqb8;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getSubId$140(Landroid/telephony/SemTelephoneManager$OnResultListener;I)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getSubId$141(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getSubId$142(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getSubId(I)I

    move-result v0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$qjiX6wRqZbTingZH639i52Hr0EQ;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$qjiX6wRqZbTingZH639i52Hr0EQ;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;I)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "getSubId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$s01uldQFBT2TIu5URd7fWZHaAeA;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$s01uldQFBT2TIu5URd7fWZHaAeA;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getVoiceMailAlphaTag$117(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getVoiceMailAlphaTag$118(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getVoiceMailAlphaTag$119(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$ntSw_sH_9xFuk-AahWgCN0Vvsw8;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$ntSw_sH_9xFuk-AahWgCN0Vvsw8;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "getVoiceMailAlphaTag"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$RevDUf3EhCV7YSIPtaIEoSfWm5g;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$RevDUf3EhCV7YSIPtaIEoSfWm5g;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getVoiceMailNumber$120(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getVoiceMailNumber$121(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getVoiceMailNumber$122(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$0M7Ea-yAgCPozT0IIK43nJZzTrc;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$0M7Ea-yAgCPozT0IIK43nJZzTrc;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "getVoiceMailAlphaTag"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$pEfUOY84-E1186NTyyYDO4vTmkU;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$pEfUOY84-E1186NTyyYDO4vTmkU;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$handleCallForwardingCallback$57(Landroid/telephony/SemTelephoneManager$OnTriResultListener;ZIILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/telephony/SemTelephoneManager$OnTriResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$handleCallForwardingCallback$58(Landroid/telephony/SemTelephoneManager$OnTriResultListener;ZLjava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Landroid/telephony/SemTelephoneManager$OnTriResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$handleCallForwardingCallback$59(Landroid/telephony/SemTelephoneManager$OnTriResultListener;ZLjava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Landroid/telephony/SemTelephoneManager$OnTriResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$hasVoLteVideoCall$70(Landroid/telephony/SemTelephoneManager$OnResultListener;Z)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$hasVoLteVideoCall$71(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Throwable;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$hasVoLteVideoCall$72(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    const v0, 0x7849ce75

    :try_start_0
    invoke-direct {p0, v0}, Landroid/telephony/SemTelephoneManager;->requireApiRevision(I)V

    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->isOnVoLteVideoCall()Z

    move-result v0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$N_i57DYQmYRXosS7KZcmppF7das;

    invoke-direct {v1, p1, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$N_i57DYQmYRXosS7KZcmppF7das;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Z)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "queryCallTypes"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$KSYsiN16VO_KLiB1DveV-hscv5Y;

    invoke-direct {v1, p1, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$KSYsiN16VO_KLiB1DveV-hscv5Y;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Throwable;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$invokeOemRilRequestRaw$100(Landroid/telephony/SemTelephoneManager;I[BLandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$20;

    invoke-direct {v1, p0, p3}, Landroid/telephony/SemTelephoneManager$20;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->invokeOemRilRequestRaw(I[BLcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "invokeOemRilRequestRaw"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$9M0HQ791SmYK_VHIa3x9kb6-xh4;

    invoke-direct {v1, p3, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$9M0HQ791SmYK_VHIa3x9kb6-xh4;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$invokeOemRilRequestRaw$99(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$invokeUssdCommand$107(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$invokeUssdCommand$108(Landroid/telephony/SemTelephoneManager;ILjava/lang/String;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$24;

    invoke-direct {v1, p0, p3}, Landroid/telephony/SemTelephoneManager$24;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->invokeUssdCommand(ILjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "invokeUssdCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$fTisqJxZqZkJCGFeoAXCKMVsPVA;

    invoke-direct {v1, p3, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$fTisqJxZqZkJCGFeoAXCKMVsPVA;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$isCallBarringEnabled$43(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$isCallBarringEnabled$44(Landroid/telephony/SemTelephoneManager;IZLjava/lang/String;Landroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$8;

    invoke-direct {v1, p0, p4}, Landroid/telephony/SemTelephoneManager$8;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryCallBarring(IZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "isCallBarringEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$faOqndonvoniZJkNvVRDxtY7vWU;

    invoke-direct {v1, p4, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$faOqndonvoniZJkNvVRDxtY7vWU;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$isCallWaitingEnabled$39(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$isCallWaitingEnabled$40(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$6;

    invoke-direct {v1, p0, p2}, Landroid/telephony/SemTelephoneManager$6;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryCallWaiting(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "isCallWaitingEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$LnFVK9os8HSSJnGWFPpR6UM_HuY;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$LnFVK9os8HSSJnGWFPpR6UM_HuY;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$isCspPlmnEnabled$73(Landroid/telephony/SemTelephoneManager$OnResultListener;Z)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isCspPlmnEnabled$74(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$isCspPlmnEnabled$75(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->isCspPlmnEnabled(I)Z

    move-result v0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$LUtAYc_txJCk9Emsf2PlTUgZXUs;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$LUtAYc_txJCk9Emsf2PlTUgZXUs;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Z)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "isCspPlmnEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$S1G5-J8qzkualLfzMe5GSCM-d-c;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$S1G5-J8qzkualLfzMe5GSCM-d-c;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$isDataRoamingEnabled$82(Landroid/telephony/SemTelephoneManager$OnResultListener;Z)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isDataRoamingEnabled$83(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$isDataRoamingEnabled$84(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->isDataRoamingEnabled(I)Z

    move-result v0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$vDLWSSaATVRlvr27aFkohTe4S1E;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$vDLWSSaATVRlvr27aFkohTe4S1E;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Z)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "isDataRoamingEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$MBmRuP2CFLgv1VG9ZNQiPkPx93M;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$MBmRuP2CFLgv1VG9ZNQiPkPx93M;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$isFdnAvailable$17(Landroid/telephony/SemTelephoneManager$OnResultListener;Z)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isFdnAvailable$18(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$isFdnAvailable$19(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->isFdnAvailable(I)Z

    move-result v0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$7e3dq-k2GL-XVEeIds-8-YofXeY;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$7e3dq-k2GL-XVEeIds-8-YofXeY;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Z)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "isFdnAvailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$DpPu88XFXR_UkGLw8mGdJkFHJKc;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$DpPu88XFXR_UkGLw8mGdJkFHJKc;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$isIccFdnEnabled$14(Landroid/telephony/SemTelephoneManager$OnResultListener;Z)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isIccFdnEnabled$15(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$isIccFdnEnabled$16(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->isIccFdnEnabled(I)Z

    move-result v0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$cZe01MJOwt4cLtuTQtnRxEfQgsg;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$cZe01MJOwt4cLtuTQtnRxEfQgsg;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Z)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "isIccFdnEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$h7LLSSAzmZtp9alsA59Bl1NjXdQ;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$h7LLSSAzmZtp9alsA59Bl1NjXdQ;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$isNetworkPolicyRestrictBackground$2(Landroid/telephony/SemTelephoneManager$OnResultListener;Z)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isNetworkPolicyRestrictBackground$3(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$isNetworkPolicyRestrictBackground$4(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->isNetworkPolicyRestrictBackground()Z

    move-result v0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$PS3Pkh7aELNchMnIDhy7489aECE;

    invoke-direct {v1, p1, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$PS3Pkh7aELNchMnIDhy7489aECE;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Z)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "isNetworkPolicyRestrictBackground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$HhjNeLQr5S0RPBVqwWBOAGfZAo8;

    invoke-direct {v1, p1, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$HhjNeLQr5S0RPBVqwWBOAGfZAo8;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$isOcsglAvailable$76(Landroid/telephony/SemTelephoneManager$OnResultListener;Z)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isOcsglAvailable$77(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$isOcsglAvailable$78(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->isOCSGLAvailable(I)Z

    move-result v0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$AJ0WGbmV_CE3Q5d4HCTx-pvfnqk;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$AJ0WGbmV_CE3Q5d4HCTx-pvfnqk;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Z)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "isOcsglAvailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$i2nyTXV3GQT5KAhclLWn1ZASUU8;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$i2nyTXV3GQT5KAhclLWn1ZASUU8;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$isUtEnabled$147(Landroid/telephony/SemTelephoneManager$OnResultListener;Z)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isUtEnabled$148(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$isUtEnabled$149(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->isUtEnabled(I)Z

    move-result v0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$cbk5G69twL2gdnsGMbzgN65BoSs;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$cbk5G69twL2gdnsGMbzgN65BoSs;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Z)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "isUtEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$26cXhsradsMrhwEGoIODyUAgvi8;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$26cXhsradsMrhwEGoIODyUAgvi8;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$notifyTtyPreferredModeChanged$0(Landroid/telephony/SemTelephoneManager;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->notifyTtyPreferredModeChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "notifyTtyPreferredModeChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static synthetic lambda$notifyVoicemailNumberChanged$1(Landroid/telephony/SemTelephoneManager;I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    const-string v1, "SemTelephoneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyVoicemailNumberChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->notifyVoicemailNumberChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "notifyVoicemailNumberChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$setCallBarringEnabled$45(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setCallBarringEnabled$46(Landroid/telephony/SemTelephoneManager;IZLjava/lang/String;ZLjava/lang/String;Landroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v1

    new-instance v7, Landroid/telephony/SemTelephoneManager$9;

    invoke-direct {v7, p0, p6}, Landroid/telephony/SemTelephoneManager$9;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setCallBarring(IZLjava/lang/String;ZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "setCallBarringEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$JlMDcNHKpd3r5SdyFn8DvJfAUPw;

    invoke-direct {v1, p6, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$JlMDcNHKpd3r5SdyFn8DvJfAUPw;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$setCallForwardingOption$55(Landroid/telephony/SemTelephoneManager$OnTriResultListener;Ljava/lang/Exception;)V
    .locals 7

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Landroid/telephony/SemTelephoneManager$OnTriResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setCallForwardingOption$56(Landroid/telephony/SemTelephoneManager;IZIZLjava/lang/String;ILandroid/telephony/SemTelephoneManager$OnTriResultListener;)V
    .locals 11

    move-object v1, p0

    move-object/from16 v2, p7

    :try_start_0
    iget-object v0, v1, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v3

    new-instance v10, Landroid/telephony/SemTelephoneManager$13;

    invoke-direct {v10, v1, v2}, Landroid/telephony/SemTelephoneManager$13;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnTriResultListener;)V

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v10}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setCallForwardingOption(IZIZLjava/lang/String;ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "SemTelephoneManager"

    const-string/jumbo v4, "setCallForwardingOption"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Landroid/telephony/-$$Lambda$SemTelephoneManager$sb8oSDvsj9AsuqEuutzKNNTktd4;

    invoke-direct {v3, v2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$sb8oSDvsj9AsuqEuutzKNNTktd4;-><init>(Landroid/telephony/SemTelephoneManager$OnTriResultListener;Ljava/lang/Exception;)V

    invoke-static {v3}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$setCallWaitingEnabled$41(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setCallWaitingEnabled$42(Landroid/telephony/SemTelephoneManager;IZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$7;

    invoke-direct {v1, p0, p3}, Landroid/telephony/SemTelephoneManager$7;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setCallWaiting(IZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "setCallWaitingEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$i6MtMF73RvZ2xera3QLbnw2d9pA;

    invoke-direct {v1, p3, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$i6MtMF73RvZ2xera3QLbnw2d9pA;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setCallingLineIdentificationRestriction$145(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setCallingLineIdentificationRestriction$146(Landroid/telephony/SemTelephoneManager;IILandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$34;

    invoke-direct {v1, p0, p3}, Landroid/telephony/SemTelephoneManager$34;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setOutGoingCallerIdDisplay(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "setCallingLineIdentificationRestriction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$Rz5wZEUIN46wX1Ws1ctv6Br4U8U;

    invoke-direct {v1, p3, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$Rz5wZEUIN46wX1Ws1ctv6Br4U8U;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$setCdmaRoamingPreference$127(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setCdmaRoamingPreference$128(Landroid/telephony/SemTelephoneManager;IILandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$31;

    invoke-direct {v1, p0, p3}, Landroid/telephony/SemTelephoneManager$31;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setCdmaRoamingPreference(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "invokeUssdCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$wPirBoNlem56puMX4RRNgtLGX4Y;

    invoke-direct {v1, p3, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$wPirBoNlem56puMX4RRNgtLGX4Y;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setCdmaSubscription$103(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setCdmaSubscription$104(Landroid/telephony/SemTelephoneManager;IILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$22;

    invoke-direct {v1, p0, p3}, Landroid/telephony/SemTelephoneManager$22;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setCdmaSubscription(IILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "setCdmaSubscription"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$I2VkwCgBzKrekV6E3IFyVVQjxag;

    invoke-direct {v1, p3, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$I2VkwCgBzKrekV6E3IFyVVQjxag;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setCsg$115(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setCsg$116(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$CsgInfo;ZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-static {p2}, Landroid/telephony/SemTelephoneManager$CsgInfo;->access$600(Landroid/telephony/SemTelephoneManager$CsgInfo;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/telephony/SemTelephoneManager$28;

    invoke-direct {v2, p0, p4}, Landroid/telephony/SemTelephoneManager$28;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-interface {v0, p1, v1, p3, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setCsgManually(ILjava/util/List;ZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "setCsg2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p4, :cond_0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$ZJUiW2TZ9kerBesTrT9PiH8xH5c;

    invoke-direct {v1, p4, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$ZJUiW2TZ9kerBesTrT9PiH8xH5c;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setCsg$125(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setCsg$126(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$30;

    invoke-direct {v1, p0, p2}, Landroid/telephony/SemTelephoneManager$30;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->selectCsg(ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "setCsg"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$d-IncekEFJUIlm1yMg2Sn-XYAJc;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$d-IncekEFJUIlm1yMg2Sn-XYAJc;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setDataRoamingEnabled$85(Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setDataRoamingEnabled$86(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setDataRoamingEnabled$87(Landroid/telephony/SemTelephoneManager;IZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setDataRoamingEnabled(IZ)V

    if-eqz p3, :cond_0

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$XpkELLBtVzlT3MpBec2mZqrsOvY;

    invoke-direct {v0, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$XpkELLBtVzlT3MpBec2mZqrsOvY;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "setDataRoamingEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_1

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$L-xPCRyKMFLAlQGKsuWDYrSB5yg;

    invoke-direct {v1, p3, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$L-xPCRyKMFLAlQGKsuWDYrSB5yg;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$setEnhancedVoicePrivacy$62(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setEnhancedVoicePrivacy$63(Landroid/telephony/SemTelephoneManager;IZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$15;

    invoke-direct {v1, p0, p3}, Landroid/telephony/SemTelephoneManager$15;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setEnhancedVoicePrivacy(IZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "setEnhancedVoicePrivacy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$q5misKSruw-XQCIxFJnCGr3xwSQ;

    invoke-direct {v1, p3, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$q5misKSruw-XQCIxFJnCGr3xwSQ;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setIccEpsLoci$22(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setIccEpsLoci$23(Landroid/telephony/SemTelephoneManager;I[BLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$2;

    invoke-direct {v1, p0, p3}, Landroid/telephony/SemTelephoneManager$2;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setIccEpsLoci(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "setIccEpsLoci"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$D7PVBIwZGHSsYalMDj_QEhRf6Zc;

    invoke-direct {v1, p3, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$D7PVBIwZGHSsYalMDj_QEhRf6Zc;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setIccFdnEnabled$20(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setIccFdnEnabled$21(Landroid/telephony/SemTelephoneManager;IZLjava/lang/String;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$1;

    invoke-direct {v1, p0, p4}, Landroid/telephony/SemTelephoneManager$1;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setIccFdnEnabled(IZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "setIccFdnEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p4, :cond_0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$k6niRDuqrH88kw9H8j0AvH_BcNs;

    invoke-direct {v1, p4, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$k6niRDuqrH88kw9H8j0AvH_BcNs;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setIccFplmn$150(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setIccFplmn$151(Landroid/telephony/SemTelephoneManager;I[BLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$35;

    invoke-direct {v1, p0, p3}, Landroid/telephony/SemTelephoneManager$35;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setIccFplmn(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "setIccFplmn"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$2jnPyBzCcxEne1W_dXf2xLo2CsQ;

    invoke-direct {v1, p3, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$2jnPyBzCcxEne1W_dXf2xLo2CsQ;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setIccLoci$27(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setIccLoci$28(Landroid/telephony/SemTelephoneManager;I[BLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    const v0, 0x7849efa9

    :try_start_0
    invoke-direct {p0, v0}, Landroid/telephony/SemTelephoneManager;->requireApiRevision(I)V

    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$3;

    invoke-direct {v1, p0, p3}, Landroid/telephony/SemTelephoneManager$3;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setIccLoci(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "setIccLoci"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$Q9vfPvS44N0XglOXNl78tfV7Nx8;

    invoke-direct {v1, p3, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$Q9vfPvS44N0XglOXNl78tfV7Nx8;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setIccNetworkDepersonalization$135(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setIccNetworkDepersonalization$136(Landroid/telephony/SemTelephoneManager;ILjava/lang/String;ILandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$32;

    invoke-direct {v1, p0, p4}, Landroid/telephony/SemTelephoneManager$32;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->supplyIccNetworkDepersonalization(ILjava/lang/String;ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "setIccNetworkDepersonalization"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p4, :cond_0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$_86dSvzVXAUeFw4n-viX_AFx4NE;

    invoke-direct {v1, p4, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$_86dSvzVXAUeFw4n-viX_AFx4NE;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setIccPsLoci$24(Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setIccPsLoci$25(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setIccPsLoci$26(Landroid/telephony/SemTelephoneManager;I[BLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    const v0, 0x7849eb5d

    :try_start_0
    invoke-direct {p0, v0}, Landroid/telephony/SemTelephoneManager;->requireApiRevision(I)V

    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setIccPsLoci(I[B)V

    if-eqz p3, :cond_0

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$z0v8GrN7KQbwUTxxtZRI3NAMZ8A;

    invoke-direct {v0, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$z0v8GrN7KQbwUTxxtZRI3NAMZ8A;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "setIccPsLoci"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_1

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$wqfClucHKW5dq10tTCGZqDDhTeE;

    invoke-direct {v1, p3, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$wqfClucHKW5dq10tTCGZqDDhTeE;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$setIncomingCallBarringInfoList$51(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/telephony/SemTelephoneManager$CallBarringInfo;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setIncomingCallBarringInfoList$52(Landroid/telephony/SemTelephoneManager;[Landroid/telephony/SemTelephoneManager$CallBarringInfo;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 9

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x3

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p1, v4

    new-instance v6, Landroid/os/Bundle;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v7, "time"

    invoke-static {v5}, Landroid/telephony/SemTelephoneManager$CallBarringInfo;->access$1300(Landroid/telephony/SemTelephoneManager$CallBarringInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "icbnumber"

    iget-object v8, v5, Landroid/telephony/SemTelephoneManager$CallBarringInfo;->number:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "barringEnabled"

    iget-boolean v8, v5, Landroid/telephony/SemTelephoneManager$CallBarringInfo;->barringEnabled:Z

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v2

    new-array v3, v3, [Landroid/os/Bundle;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Bundle;

    invoke-direct {p0, p3}, Landroid/telephony/SemTelephoneManager;->createIcBarringResultListener(Landroid/telephony/SemTelephoneManager$OnResultListener;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;

    move-result-object v4

    invoke-interface {v2, p2, v3, v4}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setIcBarring(I[Landroid/os/Bundle;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "setIncomingCallBarringInfoList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$2ZheYJc6JW-VEyOXnvyX7CW3q2U;

    invoke-direct {v1, p3, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$2ZheYJc6JW-VEyOXnvyX7CW3q2U;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$setInternalPdnEnabled$132(Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setInternalPdnEnabled$133(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setInternalPdnEnabled$134(Landroid/telephony/SemTelephoneManager;IZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setInternalPdnEnabled(IZ)V

    if-eqz p3, :cond_0

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$Wg8U0Ft12rJ-7wW-xcL7J6ii_cY;

    invoke-direct {v0, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$Wg8U0Ft12rJ-7wW-xcL7J6ii_cY;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "setInternalPdnEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_1

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$rgdbLoomQj5ydDyOsY_VxrAtKp4;

    invoke-direct {v1, p3, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$rgdbLoomQj5ydDyOsY_VxrAtKp4;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$setNetwork$101(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setNetwork$102(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$21;

    invoke-direct {v1, p0, p2}, Landroid/telephony/SemTelephoneManager$21;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setNetworkSelectionModeAutomatic(ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "setNetwork1"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$FB3d7T6BLmNHVwk9PRbYLUbBmZY;

    invoke-direct {v1, p2, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$FB3d7T6BLmNHVwk9PRbYLUbBmZY;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setNetwork$111(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setNetwork$112(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OperatorInfo;ZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-static {p2}, Landroid/telephony/SemTelephoneManager$OperatorInfo;->access$800(Landroid/telephony/SemTelephoneManager$OperatorInfo;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/telephony/SemTelephoneManager$26;

    invoke-direct {v2, p0, p4}, Landroid/telephony/SemTelephoneManager$26;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-interface {v0, p1, v1, p3, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setNetworkManually(ILjava/util/List;ZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "setNetwork"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p4, :cond_0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$r70dW6G8dC2_nZQA6cpbLKkLW9o;

    invoke-direct {v1, p4, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$r70dW6G8dC2_nZQA6cpbLKkLW9o;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setPreferredNetworkInfo$93(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setPreferredNetworkInfo$94(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$NetworkInfo;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-static {p2}, Landroid/telephony/SemTelephoneManager$NetworkInfo;->access$1000(Landroid/telephony/SemTelephoneManager$NetworkInfo;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/telephony/SemTelephoneManager$17;

    invoke-direct {v2, p0, p3}, Landroid/telephony/SemTelephoneManager$17;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setPreferredNetworkList(ILjava/util/List;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "setPreferredNetworkInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$8WYn9VA1rAdSsRLVMnewbqe54tE;

    invoke-direct {v1, p3, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$8WYn9VA1rAdSsRLVMnewbqe54tE;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setPreferredNetworkType$97(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setPreferredNetworkType$98(Landroid/telephony/SemTelephoneManager;IILandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$19;

    invoke-direct {v1, p0, p3}, Landroid/telephony/SemTelephoneManager$19;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setPreferredNetworkType(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "setPreferredNetworkType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$xfhmOnSeOXAgiBiwAtktK62wlEc;

    invoke-direct {v1, p3, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$xfhmOnSeOXAgiBiwAtktK62wlEc;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setRadioPowerEnabled$88(Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setRadioPowerEnabled$89(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setRadioPowerEnabled$90(Landroid/telephony/SemTelephoneManager;IZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setRadioPower(IZ)V

    if-eqz p3, :cond_0

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$yw8NsZHQ7YDM98ccZ5aVm4MIreI;

    invoke-direct {v0, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$yw8NsZHQ7YDM98ccZ5aVm4MIreI;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string/jumbo v2, "setRadioPowerEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_1

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$CacwgrgsCN9Ri3Zj8Ol5zNQHt2Q;

    invoke-direct {v1, p3, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$CacwgrgsCN9Ri3Zj8Ol5zNQHt2Q;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$setVoiceMailNumber$123(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setVoiceMailNumber$124(Landroid/telephony/SemTelephoneManager;ILjava/lang/String;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Landroid/telephony/SemTelephoneManager$29;

    invoke-direct {v1, p0, p4}, Landroid/telephony/SemTelephoneManager$29;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelephoneManager"

    const-string v2, "getVoiceMailAlphaTag"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p4, :cond_0

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$zmXFoKOso20mAPEB06KgsKNRJ5o;

    invoke-direct {v1, p4, v0}, Landroid/telephony/-$$Lambda$SemTelephoneManager$zmXFoKOso20mAPEB06KgsKNRJ5o;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->postOnMain(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static needToReconnect()Z
    .locals 1

    sget-object v0, Landroid/telephony/SemTelephoneManager;->sServiceBindHelper:Landroid/telephony/SemTelephoneManager$ServiceBindHelper;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/telephony/SemTelephoneManager;->sServiceBindHelper:Landroid/telephony/SemTelephoneManager$ServiceBindHelper;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->access$000(Landroid/telephony/SemTelephoneManager$ServiceBindHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static post(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Landroid/telephony/SemTelephoneManager;->sWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static postOnMain(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Landroid/telephony/SemTelephoneManager;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private requireApiRevision(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    sget-object v0, Landroid/telephony/SemTelephoneManager;->sServiceBindHelper:Landroid/telephony/SemTelephoneManager$ServiceBindHelper;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/telephony/SemTelephoneManager;->sServiceBindHelper:Landroid/telephony/SemTelephoneManager$ServiceBindHelper;

    invoke-virtual {v0}, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->getApiRevision()I

    move-result v0

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requires API revision "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/telephony/SemTelephoneManager;->sServiceBindHelper:Landroid/telephony/SemTelephoneManager$ServiceBindHelper;

    if-nez v2, :cond_2

    const-string/jumbo v2, "unknown"

    goto :goto_1

    :cond_2
    sget-object v2, Landroid/telephony/SemTelephoneManager;->sServiceBindHelper:Landroid/telephony/SemTelephoneManager$ServiceBindHelper;

    invoke-virtual {v2}, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->getApiRevision()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Landroid/telephony/-$$Lambda$SemTelephoneManager$FC--X-8gYduzh8yl9p1ULyv9fao;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/telephony/-$$Lambda$SemTelephoneManager$FC--X-8gYduzh8yl9p1ULyv9fao;-><init>(Landroid/telephony/SemTelephoneManager;ILjava/lang/String;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v6}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public changeIccFdnPassword(ILjava/lang/String;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 7

    new-instance v6, Landroid/telephony/-$$Lambda$SemTelephoneManager$u17LB1B_A5ii10lLTSIXIPTbbPM;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/telephony/-$$Lambda$SemTelephoneManager$u17LB1B_A5ii10lLTSIXIPTbbPM;-><init>(Landroid/telephony/SemTelephoneManager;ILjava/lang/String;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v6}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public changeIccFdnPasswordBySupplyPuk2(ILjava/lang/String;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 7

    new-instance v6, Landroid/telephony/-$$Lambda$SemTelephoneManager$rNBeTHObEk1O8i2KX5LSXJwHA-s;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/telephony/-$$Lambda$SemTelephoneManager$rNBeTHObEk1O8i2KX5LSXJwHA-s;-><init>(Landroid/telephony/SemTelephoneManager;ILjava/lang/String;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v6}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 1

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$5O7ve_gMibiRLfPZ8jG0JUPmcso;

    invoke-direct {v0, p0, p1}, Landroid/telephony/-$$Lambda$SemTelephoneManager$5O7ve_gMibiRLfPZ8jG0JUPmcso;-><init>(Landroid/telephony/SemTelephoneManager;I)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getActiveFgCall(Landroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Landroid/telephony/SemTelephoneManager$CallState;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$xgQCOK1Ni7-A52eubOg2OB3HSlw;

    invoke-direct {v0, p0, p1}, Landroid/telephony/-$$Lambda$SemTelephoneManager$xgQCOK1Ni7-A52eubOg2OB3HSlw;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAvailableNetworkList(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/util/List<",
            "Landroid/telephony/SemTelephoneManager$OperatorInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$d7igIJmfL2QMwI9yYe00xVqpGts;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$d7igIJmfL2QMwI9yYe00xVqpGts;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCallForwardingOption(IZILandroid/telephony/SemTelephoneManager$OnTriResultListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZI",
            "Landroid/telephony/SemTelephoneManager$OnTriResultListener<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Landroid/telephony/-$$Lambda$SemTelephoneManager$5EJNT5ArVOnwa6upzV_LzHhC04c;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/telephony/-$$Lambda$SemTelephoneManager$5EJNT5ArVOnwa6upzV_LzHhC04c;-><init>(Landroid/telephony/SemTelephoneManager;IZILandroid/telephony/SemTelephoneManager$OnTriResultListener;)V

    invoke-static {v6}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCallState(Landroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "IDLE"

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$9M2mGmSk7P82-iUTwcX8VtfzzrM;

    invoke-direct {v1, p0, p1}, Landroid/telephony/-$$Lambda$SemTelephoneManager$9M2mGmSk7P82-iUTwcX8VtfzzrM;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCallingLineIdentificationRestriction(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$gAaAaaNpowB7A58hCzxKboTCagc;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$gAaAaaNpowB7A58hCzxKboTCagc;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCdmaRoamingPreference(ILandroid/telephony/SemTelephoneManager$OnBiResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnBiResultListener<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$WxqcJb7DT26d6EpjKRpxAlyVmHc;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$WxqcJb7DT26d6EpjKRpxAlyVmHc;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnBiResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCsgList(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/util/List<",
            "Landroid/telephony/SemTelephoneManager$CsgInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$OqOwgmySe7sJo6iIzIpsPxZmwA8;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$OqOwgmySe7sJo6iIzIpsPxZmwA8;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getEnhancedVoicePrivacy(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$XOHFpZDBiLXXukWbiuyZl-h5Ktg;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$XOHFpZDBiLXXukWbiuyZl-h5Ktg;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getIccPersoSubState(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$07PwfH2lj-5spnjrCMWkEk4Fa1w;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$07PwfH2lj-5spnjrCMWkEk4Fa1w;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getIccPin2Blocked(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$EzpAeZl0rDMkXaOg56r2m2wH4II;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$EzpAeZl0rDMkXaOg56r2m2wH4II;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getIccPin2RetryCount(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$yz48TqXX2W41_iy1lt6_PwWp5pE;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$yz48TqXX2W41_iy1lt6_PwWp5pE;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getIccPuk2RetryCount(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$axeclkXd_bFrjX6zYUCTBbIGzf0;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$axeclkXd_bFrjX6zYUCTBbIGzf0;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getIccSerialNumber(IZLandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$lRs_1GYUD-MnMskwelXPwfb0JZw;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$lRs_1GYUD-MnMskwelXPwfb0JZw;-><init>(Landroid/telephony/SemTelephoneManager;IZLandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getIncomingCallBarringInfoList(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "[",
            "Landroid/telephony/SemTelephoneManager$CallBarringInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$GRfMoSZ6q5KeXSquj3aCYg2pCbc;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$GRfMoSZ6q5KeXSquj3aCYg2pCbc;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getLine1Number(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$4c2Mwoni9jJpGxk3PWIRpGOAKX8;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$4c2Mwoni9jJpGxk3PWIRpGOAKX8;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getLteOnCdmaMode(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$Q7fBFHri0oZdcIRBCgRFI07rMsg;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$Q7fBFHri0oZdcIRBCgRFI07rMsg;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getMvnoName(Ljava/lang/String;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$FX6DEXim2Y4YsUNNewQBcqQW3zw;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$FX6DEXim2Y4YsUNNewQBcqQW3zw;-><init>(Landroid/telephony/SemTelephoneManager;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getPreferredNetworkInfoList(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/util/List<",
            "Landroid/telephony/SemTelephoneManager$NetworkInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$tJWeyT-JG5ObFb30sd5KG99pqVw;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$tJWeyT-JG5ObFb30sd5KG99pqVw;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getPreferredNetworkType(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$LZFQqEryakls3wc2Jaq4XaY_xcY;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$LZFQqEryakls3wc2Jaq4XaY_xcY;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getSubId(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$1DGOKwnvhWtzice11tmFicGiW1A;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$1DGOKwnvhWtzice11tmFicGiW1A;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getVoiceMailAlphaTag(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$7CKX5mID7STatJh1S5Ks9VYdIBQ;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$7CKX5mID7STatJh1S5Ks9VYdIBQ;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getVoiceMailNumber(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$lN3_uMHP68OXuxGgPwgCsp9y3_A;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$lN3_uMHP68OXuxGgPwgCsp9y3_A;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hasVoLteVideoCall(Landroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$GVTytK6gdZmmBKBmIMDQ-5ym49w;

    invoke-direct {v0, p0, p1}, Landroid/telephony/-$$Lambda$SemTelephoneManager$GVTytK6gdZmmBKBmIMDQ-5ym49w;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public invokeOemRilRequestRaw(I[BLandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "[B>;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$jOlAi7JKUBYqn1uFBmU07WRdRgA;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$jOlAi7JKUBYqn1uFBmU07WRdRgA;-><init>(Landroid/telephony/SemTelephoneManager;I[BLandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public invokeUssdCommand(ILjava/lang/String;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 1

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$QBb-bGphLbY_7LcIPmBqweblbHc;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$QBb-bGphLbY_7LcIPmBqweblbHc;-><init>(Landroid/telephony/SemTelephoneManager;ILjava/lang/String;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isCallBarringEnabled(IZLjava/lang/String;Landroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Landroid/telephony/-$$Lambda$SemTelephoneManager$Z4QVZoDfE982wrD4nnuG7G34Ucg;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/telephony/-$$Lambda$SemTelephoneManager$Z4QVZoDfE982wrD4nnuG7G34Ucg;-><init>(Landroid/telephony/SemTelephoneManager;IZLjava/lang/String;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v6}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isCallWaitingEnabled(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$jNzWbEL9Uhg9UW3xEmCuoWQFacY;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$jNzWbEL9Uhg9UW3xEmCuoWQFacY;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isCspPlmnEnabled(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$g0pyJyXRkLiEIv4KVrPkJpyXRBM;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$g0pyJyXRkLiEIv4KVrPkJpyXRBM;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isDataRoamingEnabled(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$qV76_lkoueyaZlPpvjSGwFJCAHY;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$qV76_lkoueyaZlPpvjSGwFJCAHY;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isFdnAvailable(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$Zn2uGfnw0ffRBt-03cmhrbbnVdg;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$Zn2uGfnw0ffRBt-03cmhrbbnVdg;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isIccFdnEnabled(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$h8ygWwrizbOpROjHNW6-BhQUuHM;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$h8ygWwrizbOpROjHNW6-BhQUuHM;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isNetworkPolicyRestrictBackground(Landroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$IiZMOlw9OdMqEHfBHjDL7dob_MQ;

    invoke-direct {v0, p0, p1}, Landroid/telephony/-$$Lambda$SemTelephoneManager$IiZMOlw9OdMqEHfBHjDL7dob_MQ;-><init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isOcsglAvailable(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$LsRm_wajhVPvskzZVtk6AQc67Xo;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$LsRm_wajhVPvskzZVtk6AQc67Xo;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isUtEnabled(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$u0teJWt3DBBhQvfnDyYphcAd4DM;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$u0teJWt3DBBhQvfnDyYphcAd4DM;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyTtyPreferredModeChanged(I)V
    .locals 1

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$UFnOMIvNnfgyLJuKVpfYjU3w-9g;

    invoke-direct {v0, p0, p1}, Landroid/telephony/-$$Lambda$SemTelephoneManager$UFnOMIvNnfgyLJuKVpfYjU3w-9g;-><init>(Landroid/telephony/SemTelephoneManager;I)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyVoicemailNumberChanged(I)V
    .locals 1

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$SepJ4hTwuPHgkLWJ7bu4AFdmpUI;

    invoke-direct {v0, p0, p1}, Landroid/telephony/-$$Lambda$SemTelephoneManager$SepJ4hTwuPHgkLWJ7bu4AFdmpUI;-><init>(Landroid/telephony/SemTelephoneManager;I)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCallBarringEnabled(IZLjava/lang/String;ZLjava/lang/String;Landroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v8, Landroid/telephony/-$$Lambda$SemTelephoneManager$bnbjwUVNCzK8S88ph7oRbwz60Js;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/telephony/-$$Lambda$SemTelephoneManager$bnbjwUVNCzK8S88ph7oRbwz60Js;-><init>(Landroid/telephony/SemTelephoneManager;IZLjava/lang/String;ZLjava/lang/String;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v8}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCallForwardingOption(IZIZLjava/lang/String;ILandroid/telephony/SemTelephoneManager$OnTriResultListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIZ",
            "Ljava/lang/String;",
            "I",
            "Landroid/telephony/SemTelephoneManager$OnTriResultListener<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v9, Landroid/telephony/-$$Lambda$SemTelephoneManager$1tD51RMXNV0p7KwXeDeyRzm9zGU;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/telephony/-$$Lambda$SemTelephoneManager$1tD51RMXNV0p7KwXeDeyRzm9zGU;-><init>(Landroid/telephony/SemTelephoneManager;IZIZLjava/lang/String;ILandroid/telephony/SemTelephoneManager$OnTriResultListener;)V

    invoke-static {v9}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCallWaitingEnabled(IZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 1

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$v8QXc5Jv8DL38zsT1EPR8cDmbU8;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$v8QXc5Jv8DL38zsT1EPR8cDmbU8;-><init>(Landroid/telephony/SemTelephoneManager;IZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCallingLineIdentificationRestriction(IILandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 1

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$e9P7aF9RgYFS6irg8xoGRiVzCPM;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$e9P7aF9RgYFS6irg8xoGRiVzCPM;-><init>(Landroid/telephony/SemTelephoneManager;IILandroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCdmaRoamingPreference(IILandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 1

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$se_7IeknLmpXZdgbVLFQ_x8uPNU;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$se_7IeknLmpXZdgbVLFQ_x8uPNU;-><init>(Landroid/telephony/SemTelephoneManager;IILandroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCdmaSubscription(IILandroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$uT6TQRYpz8CD1BQxvLdgveGGR6I;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$uT6TQRYpz8CD1BQxvLdgveGGR6I;-><init>(Landroid/telephony/SemTelephoneManager;IILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCsg(ILandroid/telephony/SemTelephoneManager$CsgInfo;ZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 7

    new-instance v6, Landroid/telephony/-$$Lambda$SemTelephoneManager$1EPtq0YqgUO0MCYGTXYCB8eRAXo;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/telephony/-$$Lambda$SemTelephoneManager$1EPtq0YqgUO0MCYGTXYCB8eRAXo;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$CsgInfo;ZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v6}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCsg(ILandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 1

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$uxPb6_TdwYKOB5rjjrMloQihoMg;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$uxPb6_TdwYKOB5rjjrMloQihoMg;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDataRoamingEnabled(IZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 1

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$p4KvG6udXO9cVGg2DZh4qSev2tY;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$p4KvG6udXO9cVGg2DZh4qSev2tY;-><init>(Landroid/telephony/SemTelephoneManager;IZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEnhancedVoicePrivacy(IZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 1

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$c1R6cS9cKcL83tosxDv07CiJ3ZI;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$c1R6cS9cKcL83tosxDv07CiJ3ZI;-><init>(Landroid/telephony/SemTelephoneManager;IZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIccEpsLoci(I[BLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 1

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$SITCD5QIDTXv6yhh1_g4ZivmxWM;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$SITCD5QIDTXv6yhh1_g4ZivmxWM;-><init>(Landroid/telephony/SemTelephoneManager;I[BLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIccFdnEnabled(IZLjava/lang/String;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 7

    new-instance v6, Landroid/telephony/-$$Lambda$SemTelephoneManager$uYcdKH_D7UF7jWR51-ERgke33_4;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/telephony/-$$Lambda$SemTelephoneManager$uYcdKH_D7UF7jWR51-ERgke33_4;-><init>(Landroid/telephony/SemTelephoneManager;IZLjava/lang/String;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v6}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIccFplmn(I[BLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 1

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$B88t1ewYr8WfFSI7yybLCA1EpmM;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$B88t1ewYr8WfFSI7yybLCA1EpmM;-><init>(Landroid/telephony/SemTelephoneManager;I[BLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIccLoci(I[BLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 1

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$4HobaMcArzyp78-rR6bSNMuJUhY;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$4HobaMcArzyp78-rR6bSNMuJUhY;-><init>(Landroid/telephony/SemTelephoneManager;I[BLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIccNetworkDepersonalization(ILjava/lang/String;ILandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 7

    new-instance v6, Landroid/telephony/-$$Lambda$SemTelephoneManager$GOwQOkSnYe3hk8kgHj7KhnelmUE;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/telephony/-$$Lambda$SemTelephoneManager$GOwQOkSnYe3hk8kgHj7KhnelmUE;-><init>(Landroid/telephony/SemTelephoneManager;ILjava/lang/String;ILandroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v6}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIccPsLoci(I[BLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 1

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$Wr_cdIH0KHDJREnzLvcLMnUCpyc;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$Wr_cdIH0KHDJREnzLvcLMnUCpyc;-><init>(Landroid/telephony/SemTelephoneManager;I[BLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIncomingCallBarringInfoList(I[Landroid/telephony/SemTelephoneManager$CallBarringInfo;Landroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/telephony/SemTelephoneManager$CallBarringInfo;",
            "Landroid/telephony/SemTelephoneManager$OnResultListener<",
            "[",
            "Landroid/telephony/SemTelephoneManager$CallBarringInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$NOTILI7lF3VV-lcABfL4C60L7Ws;

    invoke-direct {v0, p0, p2, p1, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$NOTILI7lF3VV-lcABfL4C60L7Ws;-><init>(Landroid/telephony/SemTelephoneManager;[Landroid/telephony/SemTelephoneManager$CallBarringInfo;ILandroid/telephony/SemTelephoneManager$OnResultListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setInternalPdnEnabled(IZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 1

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$89kQW7dB_kNN043k0G2WnIRkePY;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$89kQW7dB_kNN043k0G2WnIRkePY;-><init>(Landroid/telephony/SemTelephoneManager;IZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setNetwork(ILandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 1

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$GfMbG_7Jt6UPOmnbwEGBYVkqKP0;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$GfMbG_7Jt6UPOmnbwEGBYVkqKP0;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setNetwork(ILandroid/telephony/SemTelephoneManager$OperatorInfo;ZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 7

    new-instance v6, Landroid/telephony/-$$Lambda$SemTelephoneManager$G5QqEIm2fZja-ZI3dMGJoNcTAdo;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/telephony/-$$Lambda$SemTelephoneManager$G5QqEIm2fZja-ZI3dMGJoNcTAdo;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OperatorInfo;ZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v6}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPreferredNetworkInfo(ILandroid/telephony/SemTelephoneManager$NetworkInfo;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 1

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$1_tOcQrDnvdUd-f8Pxqbmru1r6o;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$1_tOcQrDnvdUd-f8Pxqbmru1r6o;-><init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$NetworkInfo;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPreferredNetworkType(IILandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 1

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$MFtEz3tVx494vdfswuKY6IHc_pk;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$MFtEz3tVx494vdfswuKY6IHc_pk;-><init>(Landroid/telephony/SemTelephoneManager;IILandroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRadioPowerEnabled(IZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 1

    new-instance v0, Landroid/telephony/-$$Lambda$SemTelephoneManager$Ls2oSAqrk3AvZa6aeNMVf7cM7p8;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$Ls2oSAqrk3AvZa6aeNMVf7cM7p8;-><init>(Landroid/telephony/SemTelephoneManager;IZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 7

    new-instance v6, Landroid/telephony/-$$Lambda$SemTelephoneManager$pJf7HC9SFbHbldtLSPiapI0oPOg;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/telephony/-$$Lambda$SemTelephoneManager$pJf7HC9SFbHbldtLSPiapI0oPOg;-><init>(Landroid/telephony/SemTelephoneManager;ILjava/lang/String;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    invoke-static {v6}, Landroid/telephony/SemTelephoneManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method
