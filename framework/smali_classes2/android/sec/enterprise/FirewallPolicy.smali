.class public Landroid/sec/enterprise/FirewallPolicy;
.super Ljava/lang/Object;
.source "FirewallPolicy.java"


# static fields
.field public static final ACTION_CAPTIVE_PORTAL_DETECTED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CAPTIVE_PORTAL_DETECTED_INTERNAL"

.field public static final ACTION_NETWORK_VALIDATED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.NETWORK_VALIDATED_INTERNAL"

.field public static final EXTRA_CAPTIVE_PORTAL_URL_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.EXTRA_CAPTIVE_PORTAL_URL_INTERNAL"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FirewallPolicy"

    sput-object v0, Landroid/sec/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isUrlBlocked(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Landroid/sec/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Exception..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method
