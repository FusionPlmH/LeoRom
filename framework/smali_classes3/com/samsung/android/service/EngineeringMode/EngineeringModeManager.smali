.class public final Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
.super Ljava/lang/Object;
.source "EngineeringModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;
    }
.end annotation


# static fields
.field public static final ALLOWED:I = 0x1

.field public static final DEV_OK:I = -0xffff68

.field public static final DISABLE:I = 0x1

.field public static final ENABLE:I = 0x0

.field public static final ENG_KERNEL:I = 0x0

.field public static final ERRORBYTE_EM_SERVICE:[B

.field public static final ERRORBYTE_INVAILD_PARAM:[B

.field public static final ERRORBYTE_NOT_INSATALLED:[B

.field public static final ERRORBYTE_NOT_SUPPORTED:[B

.field public static final ERRORBYTE_NO_PERMISSION:[B

.field public static final ERRORINTARR_EM_SERVICE:[I

.field public static final ERRORINTARR_INTERNAL:[I

.field public static final ERRORINTARR_NOT_INSTALLED:[I

.field public static final ERRORINTARR_NOT_SUPPORTED:[I

.field public static final ERRORINTARR_NO_PERMISSION:[I

.field public static final ERRORSTRING_EM_SERVICE:Ljava/lang/String; = "ERROR_EM_SERVICE"

.field public static final ERRORSTRING_INTERNAL:Ljava/lang/String; = "ERROR_INTERNAL"

.field public static final ERRORSTRING_NOT_INSTALLED:Ljava/lang/String; = "ERROR_TOKEN_NOT_INSATLLED"

.field public static final ERRORSTRING_NOT_SUPPORTED:Ljava/lang/String; = "ERROR_NOT_SUPPORTED"

.field public static final ERRORSTRING_NO_PERMISSION:Ljava/lang/String; = "ERROR_NO_PERMISSION"

.field public static final ERROR_COUNTER:I = -0xfffffec

.field public static final ERROR_EM_SERVICE:I = -0x3e8

.field public static final ERROR_INVALID_ESI:I = -0x578

.field public static final ERROR_INVALID_PARAM:I = -0x6a4

.field public static final ERROR_NOT_SUPPORTED:I = -0x640

.field public static final ERROR_NO_PERMISSION:I = -0x514

.field public static final ERROR_TUC_ZERO:I = -0x5dc

.field public static final MODE_CUST_KERNEL:I = 0x3

.field public static final MODE_DEBUG_LOG:I = 0x2

.field public static final MODE_ENG_KERNEL:I = 0x0

.field public static final MODE_KNOX_TEST:I = 0x4

.field public static final MODE_TEST_ENV:I = 0x1

.field public static final MODE_USB_DEBUG:I = 0x1

.field public static final NATIVE_NO_PERMISSION:I = -0xffffffc

.field public static final NATIVE_SUCCESS:I = 0x0

.field public static final NOK:I = 0x0

.field public static final NOT_ALLOWED:I = 0x0

.field public static final OK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EngineeringModeManager"

.field public static final USB_DEBUG:I = 0x1

.field public static final USB_DEBUG_ALLOWED:I = 0x1

.field public static final USB_DEBUG_NOT_ALLOWED:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPkgName:Ljava/lang/String;

.field private mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B

    new-array v1, v0, [B

    const/4 v3, -0x2

    aput-byte v3, v1, v2

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NOT_SUPPORTED:[B

    new-array v1, v0, [B

    const/4 v3, -0x3

    aput-byte v3, v1, v2

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_INVAILD_PARAM:[B

    new-array v1, v0, [B

    const/4 v3, -0x4

    aput-byte v3, v1, v2

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NOT_INSATALLED:[B

    new-array v1, v0, [I

    const v3, -0xfffffff

    aput v3, v1, v2

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_INTERNAL:[I

    new-array v1, v0, [I

    const v3, -0xffffffe

    aput v3, v1, v2

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_EM_SERVICE:[I

    new-array v1, v0, [I

    const v3, -0xffffffd

    aput v3, v1, v2

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_NO_PERMISSION:[I

    new-array v1, v0, [I

    const v3, -0xffffffc

    aput v3, v1, v2

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_NOT_SUPPORTED:[I

    new-array v0, v0, [I

    const v1, -0xffffffb

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_NOT_INSTALLED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgName:Ljava/lang/String;

    const-string v0, "EngineeringModeService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    const-string v0, "EngineeringModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " connects to EngineeringModeService."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getExpiryDate()Ljava/lang/String;
    .locals 4

    const-string v0, "EngineeringModeManager"

    const-string v1, "getExpiryDate() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getExpiryDate()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "EngineeringModeManager"

    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v0
.end method

.method public getID()[B
    .locals 3

    const-string v0, "EngineeringModeManager"

    const-string v1, "getID() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getID()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v1, "EngineeringModeManager"

    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public getLastTokenStatus()Ljava/lang/String;
    .locals 3

    const-string v0, "EngineeringModeManager"

    const-string v1, "getLastTokenStatus() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getLastTokenStatus()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "ERROR_EM_SERVICE"

    return-object v1

    :catch_1
    move-exception v0

    const-string v1, "EngineeringModeManager"

    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v1, "ERROR_EM_SERVICE"

    return-object v1
.end method

.method public getModes()[I
    .locals 3

    const-string v0, "EngineeringModeManager"

    const-string v1, "getModes() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getModes()[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_EM_SERVICE:[I

    return-object v1

    :catch_1
    move-exception v0

    const-string v1, "EngineeringModeManager"

    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_EM_SERVICE:[I

    return-object v1
.end method

.method public getNumOfModes()I
    .locals 4

    const-string v0, "EngineeringModeManager"

    const-string v1, "getNumOfModes() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getNumOfModes()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    const-string v2, "EngineeringModeManager"

    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public getPriorityTime()[B
    .locals 3

    const-string v0, "EngineeringModeManager"

    const-string/jumbo v1, "setPriorityTime() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getPriorityTime()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v1, "EngineeringModeManager"

    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public getRequestMsg(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 3

    const-string v0, "EngineeringModeManager"

    const-string v1, "getRequestMsg() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v1, "EngineeringModeManager"

    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 3

    const-string v0, "EngineeringModeManager"

    const-string v1, "getRequestMsg() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v1, "EngineeringModeManager"

    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public getServerTime()J
    .locals 5

    const-string v0, "EngineeringModeManager"

    const-string v1, "getServerTime() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x3e8

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getServerTime()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v0

    :catch_1
    move-exception v2

    const-string v3, "EngineeringModeManager"

    const-string v4, "Failed to connect service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-wide v0
.end method

.method public getStatus(I)I
    .locals 4

    const-string v0, "EngineeringModeManager"

    const-string v1, "getStatus() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getStatus(ILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    const-string v2, "EngineeringModeManager"

    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public getStringModes()Ljava/lang/String;
    .locals 3

    const-string v0, "EngineeringModeManager"

    const-string v1, "getStringModes() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getStringModes()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "ERROR_EM_SERVICE"

    return-object v1

    :catch_1
    move-exception v0

    const-string v1, "EngineeringModeManager"

    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v1, "ERROR_EM_SERVICE"

    return-object v1
.end method

.method public getTUC(I)I
    .locals 4

    const-string v0, "EngineeringModeManager"

    const-string v1, "getTUC() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v1, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getTUC(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    const-string v2, "EngineeringModeManager"

    const-string v3, "Failed to connect service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public getToken(I[B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;
    .locals 4

    const-string v0, "EngineeringModeManager"

    const-string v1, "getToken() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;

    invoke-direct {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;-><init>()V

    if-nez p1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseToken(I[B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getToken()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseToken([B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    move-result-object v3

    return-object v3

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    invoke-virtual {v1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseToken([B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_2
    nop

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "EngineeringModeManager"

    const-string v3, "Failed to connect service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v0
.end method

.method public installToken([B)I
    .locals 4

    const-string v0, "EngineeringModeManager"

    const-string v1, "installToken() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v1, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->installToken([B)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    const-string v2, "EngineeringModeManager"

    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public installTokenForESS(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "EngineeringModeManager"

    const-string v1, "installTokenForESS() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v0, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->installTokenForESS(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v1, "EngineeringModeManager"

    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTokenInstalled()I
    .locals 4

    const-string v0, "EngineeringModeManager"

    const-string/jumbo v1, "isTokenInstalled() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->isTokenInstalled()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    const-string v2, "EngineeringModeManager"

    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public makeDelTokenForESS(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "EngineeringModeManager"

    const-string/jumbo v1, "makeDelTokenForESS() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v0, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->makeDelTokenForESS(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v1, "EngineeringModeManager"

    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public makeITLReq(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    const-string v0, "EngineeringModeManager"

    const-string/jumbo v1, "makeITLReq() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->makeITLReq(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v1, "EngineeringModeManager"

    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public makeITLReqForESS(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "EngineeringModeManager"

    const-string/jumbo v1, "makeITLReqForESS is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v0, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->makeITLReqForESS(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v1, "EngineeringModeManager"

    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public makeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B
    .locals 3

    const-string v0, "EngineeringModeManager"

    const-string/jumbo v1, "makeTokenReq() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->makeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v1, "EngineeringModeManager"

    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public makeTokenReqForESS(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "EngineeringModeManager"

    const-string/jumbo v1, "makeTokenReqForESS() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v0, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->makeTokenReqForESS(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v1, "EngineeringModeManager"

    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public recoveryITL([B)I
    .locals 4

    const-string v0, "EngineeringModeManager"

    const-string/jumbo v1, "restoreITL() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v1, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->recoveryITL([B)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    const-string v2, "EngineeringModeManager"

    const-string v3, "Failed to connect service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public recoveryITLForESS(Ljava/lang/String;)I
    .locals 4

    const-string v0, "EngineeringModeManager"

    const-string/jumbo v1, "recoveryITLForESS() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v1, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->recoveryITLForESS(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    const-string v2, "EngineeringModeManager"

    const-string v3, "Failed to connect service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public removeToken()I
    .locals 4

    const-string v0, "EngineeringModeManager"

    const-string/jumbo v1, "removeToken() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->removeToken()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    const-string v2, "EngineeringModeManager"

    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public sendFuseCmd()I
    .locals 4

    const-string v0, "EngineeringModeManager"

    const-string/jumbo v1, "sendFuseCmd() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->sendFuseCmd()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    const-string v2, "EngineeringModeManager"

    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public setPriorityTime(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "EngineeringModeManager"

    const-string/jumbo v1, "setPriorityTime() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v0, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->setPriorityTime(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v1, "EngineeringModeManager"

    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method
