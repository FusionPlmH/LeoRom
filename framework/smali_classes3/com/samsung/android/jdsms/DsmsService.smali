.class public Lcom/samsung/android/jdsms/DsmsService;
.super Lcom/samsung/android/dsms/aidl/IDsmsAPI$Stub;
.source "DsmsService.java"


# static fields
.field static final DEBUG:Z = false

.field public static final DSMS_SERVICE:Ljava/lang/String; = "dsms"

.field private static final TAG:Ljava/lang/String; = "[DSMS-FRAMEWORK][Service]"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/dsms/aidl/IDsmsAPI$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public sendLog(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/jdsms/PolicyEnforcer;->isAValidUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[DSMS-FRAMEWORK][Service]"

    const-string v1, "Unauthorized call"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/samsung/android/jdsms/Sender;

    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/jdsms/Sender;-><init>(Landroid/content/Context;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/jdsms/Sender;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[DSMS-FRAMEWORK][Service]"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
