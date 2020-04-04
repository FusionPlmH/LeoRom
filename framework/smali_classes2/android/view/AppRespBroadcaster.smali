.class Landroid/view/AppRespBroadcaster;
.super Ljava/lang/Object;
.source "AppRespBroadcaster.java"


# static fields
.field private static final ACTION_APPLICATION_RESP:Ljava/lang/String; = "com.att.iqi.service.action.ApplicationResp"

.field private static final DEBUG_LOG:Z = false

.field private static final EXTRA_APP_PACKAGE_NAME:Ljava/lang/String; = "ApplicationPackageName"

.field private static final EXTRA_APP_RESP_DELAY:Ljava/lang/String; = "ApplicationRespDelay"

.field private static final LOG_TAG:Ljava/lang/String; = "IQAgent"

.field private static final MIN_REPORT_DELAY:I = 0x64

.field private static final PERMISSION_RECEIVE_APPLICATION_STATE:Ljava/lang/String; = "com.att.iqi.permission.RECEIVE_APP_STATE"

.field private static volatile sBroadcastEnabled:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mElapsedRealtimeNow:J

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/AppRespBroadcaster;->sBroadcastEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/view/AppRespBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/AppRespBroadcaster;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/AppRespBroadcaster;->mElapsedRealtimeNow:J

    :cond_0
    return-void
.end method

.method private static stripPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    move-object v0, p0

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public sendInputResponse()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/view/AppRespBroadcaster;->mElapsedRealtimeNow:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.att.iqi.service.action.ApplicationResp"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "ApplicationPackageName"

    iget-object v3, p0, Landroid/view/AppRespBroadcaster;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/view/AppRespBroadcaster;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ApplicationRespDelay"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Landroid/view/AppRespBroadcaster;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const-string v4, "com.att.iqi.permission.RECEIVE_APP_STATE"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_0
    :goto_0
    return-void
.end method
