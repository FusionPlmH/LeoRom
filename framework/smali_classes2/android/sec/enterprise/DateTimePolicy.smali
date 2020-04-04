.class public Landroid/sec/enterprise/DateTimePolicy;
.super Ljava/lang/Object;
.source "DateTimePolicy.java"


# static fields
.field public static final NOT_SET_LONG:J

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DateTimePolicy"

    sput-object v0, Landroid/sec/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDateTimeChangeEnabled()Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isDateTimeChangeEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/sec/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isDateTimeChangeEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    return v0
.end method
