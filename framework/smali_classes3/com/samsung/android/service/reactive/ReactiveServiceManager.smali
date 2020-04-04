.class public final Lcom/samsung/android/service/reactive/ReactiveServiceManager;
.super Ljava/lang/Object;
.source "ReactiveServiceManager.java"


# static fields
.field public static final FLAG_ACTIVATED:I = 0x1

.field public static final FLAG_DEACTIVATED:I = 0x0

.field public static final FLAG_DEACTIVATED_WITH_ACCOUNT:I = 0x3

.field public static final FLAG_TRIGGERED:I = 0x2

.field public static final FRP_FLAG:I = 0x2

.field public static final FRP_SERIVCE_OPERATION_FAILED:I = -0x7

.field public static final GOOGLE_FACTORY_RESET_PROTECTION_IS_SUPPORTED:I = 0x2

.field private static final RC_VT_VALID_SIZE:I = 0x20

.field public static final REACTIVATION_FLAG:I = 0x0

.field public static final REACTIVE_SERVICE_EXCEPTION_ERROR:I = -0xa

.field public static final REACTIVE_SERVICE_INVALID_ARGUMENTS:I = -0x8

.field public static final REACTIVE_SERVICE_IS_NOT_EXIST:I = -0x9

.field public static final REACTIVE_SERVICE_IS_NOT_SUPPORTED:I = 0x0

.field public static final REACTIVE_SERVICE_OPERATION_FAILED:I = -0x6

.field public static final REACTIVE_SERVICE_RETURN_FLAG_IS_NOT_EXIST:I = -0x3

.field public static final REACTIVE_SERVICE_RETURN_NATIVE_ERROR:I = -0x1

.field public static final REACTIVE_SERVICE_RETURN_NO_ERROR:I = 0x0

.field public static final REACTIVE_SERVICE_RETURN_PERMISSION_DENIED:I = -0x5

.field public static final REACTIVE_SERVICE_RETURN_STRING_IS_NOT_EXIST:I = -0x4

.field public static final REACTIVE_SERVICE_RETURN_UNSUPPORTED_OPERATION:I = -0x2

.field private static final RS_GOOGLE_NWD_SUPPORTED:I = 0x4

.field private static final RS_IS_NOT_SUPPORTED:I = 0x0

.field private static final RS_SAMSUNG_NWD_SUPPORTED:I = 0x2

.field private static final RS_SAMSUNG_SWD_SUPPORTED:I = 0x1

.field public static final SAMSUNG_GOOGLE_REACTIVE_SERVICES_ARE_SUPPORTED:I = 0x3

.field public static final SAMSUNG_REACTIVE_SERVICE_IS_SUPPORTED:I = 0x1

.field public static final SERVICE_FLAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReactiveServiceManager"

.field private static final USE_SAMSUNG_ACCOUNT:I = 0x0

.field private static final USE_VERIFICATION_TOKEN:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/service/reactive/IReactiveService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mContext:Landroid/content/Context;

    const-string v0, "ReactiveService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/reactive/IReactiveService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    return-void
.end method

.method private toHex([B)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xff

    aget-byte v4, p1, v1

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public disable([B)I
    .locals 4

    if-eqz p1, :cond_3

    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, -0x2

    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-direct {p0, p1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->toHex([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, v1}, Lcom/samsung/android/service/reactive/IReactiveService;->setFlag(IILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-eqz v0, :cond_2

    const-string v1, "ReactiveServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable() : error code["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0xa

    return v1

    :catch_1
    move-exception v0

    const/16 v1, -0x9

    return v1

    :cond_3
    :goto_0
    const/4 v0, -0x8

    return v0
.end method

.method public disableWithAccountId(Ljava/lang/String;)I
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, -0x8

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, -0x2

    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->setFlag(IILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-eqz v0, :cond_2

    const-string v1, "ReactiveServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableWithAccountId() : error code["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0xa

    return v1

    :catch_1
    move-exception v0

    const/16 v1, -0x9

    return v1
.end method

.method public enable([B)I
    .locals 4

    if-eqz p1, :cond_3

    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, -0x2

    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v1, v3}, Lcom/samsung/android/service/reactive/IReactiveService;->setFlag(IILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-eqz v0, :cond_2

    const-string v1, "ReactiveServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable() : error code["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0xa

    return v1

    :catch_1
    move-exception v0

    const/16 v1, -0x9

    return v1

    :cond_3
    :goto_0
    const/4 v0, -0x8

    return v0
.end method

.method public getErrorCode()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v0}, Lcom/samsung/android/service/reactive/IReactiveService;->getErrorCode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0xa

    return v1

    :catch_1
    move-exception v0

    const/16 v1, -0x9

    return v1
.end method

.method public getFlag(I)I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v0, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->getFlag(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    :cond_0
    const-string v1, "ReactiveServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFlag() : error code["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0xa

    return v1

    :catch_1
    move-exception v0

    const/16 v1, -0x9

    return v1
.end method

.method public getRandom()[B
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "ReactiveServiceManager"

    const-string v2, "Invalid operation."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v1}, Lcom/samsung/android/service/reactive/IReactiveService;->getRandom()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    if-nez v0, :cond_1

    const/4 v1, -0x6

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0xa

    goto :goto_2

    :catch_1
    move-exception v1

    const/16 v1, -0x9

    :goto_1
    nop

    :goto_2
    nop

    if-gez v1, :cond_2

    const-string v2, "ReactiveServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRandom() : error code["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    const-string v2, "ReactiveServiceManager"

    const-string v3, "Success of generate random numbers."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v0
.end method

.method public getRawServiceValueForAtCommand()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v0}, Lcom/samsung/android/service/reactive/IReactiveService;->getServiceSupport()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0xa

    return v1

    :catch_1
    move-exception v0

    const/16 v1, -0x9

    return v1
.end method

.method public getServiceSupport()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v0}, Lcom/samsung/android/service/reactive/IReactiveService;->getServiceSupport()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    const-string v1, "ReactiveServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supported : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    return v1

    :pswitch_1
    const/4 v1, 0x3

    return v1

    :pswitch_2
    const/4 v1, 0x2

    return v1

    :pswitch_3
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0xa

    return v1

    :catch_1
    move-exception v0

    const/16 v1, -0x9

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getStatus()I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ReactiveServiceManager"

    const-string v1, "ReactiveService is not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x9

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v1

    :goto_0
    goto :goto_1

    :cond_1
    if-ne v0, v2, :cond_3

    invoke-virtual {p0, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v1

    goto :goto_0

    :goto_1
    nop

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    const/4 v1, -0x3

    return v1
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v1}, Lcom/samsung/android/service/reactive/IReactiveService;->getString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    nop

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "ReactiveServiceManager"

    const-string v3, "getString() : Service is not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeString()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v0}, Lcom/samsung/android/service/reactive/IReactiveService;->removeString()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-gez v0, :cond_0

    const-string v1, "ReactiveServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeString() : error code["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "ReactiveServiceManager"

    const-string/jumbo v2, "removeString Success "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0xa

    return v1

    :catch_1
    move-exception v0

    const/16 v1, -0x9

    return v1
.end method

.method public sessionAccept([B)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "ReactiveServiceManager"

    const-string v2, "SessionAccept() : Invalid argument"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v1, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->sessionAccept([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    nop

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "ReactiveServiceManager"

    const-string v3, "SessionAccpet() : Service is not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public sessionComplete([B)I
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, -0x8

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v0, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->sessionComplete([B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-eqz v0, :cond_1

    const-string v1, "ReactiveServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sessionComplete() : error code["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0xa

    return v1

    :catch_1
    move-exception v0

    const/16 v1, -0x9

    return v1
.end method

.method public setFlag(IILjava/lang/String;)I
    .locals 2

    const-string v0, "ReactiveServiceManager"

    const-string/jumbo v1, "setFlag() - No longer used API"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0
.end method

.method public setString(Ljava/lang/String;)I
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, -0x8

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v0, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->setString(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-gez v0, :cond_1

    const-string v1, "ReactiveServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setString() : error code["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "ReactiveServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setString() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " characters are saved."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0xa

    return v1

    :catch_1
    move-exception v0

    const/16 v1, -0x9

    return v1
.end method

.method public verify([B)I
    .locals 4

    if-eqz p1, :cond_3

    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, -0x2

    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-direct {p0, p1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/service/reactive/IReactiveService;->verify(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-gez v0, :cond_2

    const-string v1, "ReactiveServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verify() : error code["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "ReactiveServiceManager"

    const-string v2, "Verification success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0xa

    return v1

    :catch_1
    move-exception v0

    const/16 v1, -0x9

    return v1

    :cond_3
    :goto_1
    const/4 v0, -0x8

    return v0
.end method

.method public verifyWithAccountId(Ljava/lang/String;)I
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, -0x8

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, -0x2

    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/service/reactive/IReactiveService;->verify(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-gez v0, :cond_2

    const-string v1, "ReactiveServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyWithAccountId() : error code["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "ReactiveServiceManager"

    const-string v2, "Verification with id, success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0xa

    return v1

    :catch_1
    move-exception v0

    const/16 v1, -0x9

    return v1
.end method
