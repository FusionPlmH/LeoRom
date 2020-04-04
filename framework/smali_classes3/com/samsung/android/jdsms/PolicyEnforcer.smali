.class final Lcom/samsung/android/jdsms/PolicyEnforcer;
.super Ljava/lang/Object;
.source "PolicyEnforcer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[DSMS-FRAMEWORK][POLICY]"

.field private static final mCallerVerifier:Lcom/samsung/android/jdsms/CallerVerifier;

.field private static final mUidWhiteList:Lcom/samsung/android/jdsms/UidWhiteList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/jdsms/UidWhiteList;

    invoke-direct {v0}, Lcom/samsung/android/jdsms/UidWhiteList;-><init>()V

    sput-object v0, Lcom/samsung/android/jdsms/PolicyEnforcer;->mUidWhiteList:Lcom/samsung/android/jdsms/UidWhiteList;

    new-instance v0, Lcom/samsung/android/jdsms/CallerVerifier;

    invoke-direct {v0}, Lcom/samsung/android/jdsms/CallerVerifier;-><init>()V

    sput-object v0, Lcom/samsung/android/jdsms/PolicyEnforcer;->mCallerVerifier:Lcom/samsung/android/jdsms/CallerVerifier;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final isAValidCaller()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/jdsms/PolicyEnforcer;->mCallerVerifier:Lcom/samsung/android/jdsms/CallerVerifier;

    invoke-virtual {v0}, Lcom/samsung/android/jdsms/CallerVerifier;->wasCallerValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[DSMS-FRAMEWORK][POLICY]"

    const-string v1, "Unauthorized Caller"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static final isAValidUser(Landroid/content/Context;)Z
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v2, Lcom/samsung/android/jdsms/PolicyEnforcer;->mUidWhiteList:Lcom/samsung/android/jdsms/UidWhiteList;

    invoke-virtual {v2, v1}, Lcom/samsung/android/jdsms/UidWhiteList;->containsUid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    :goto_0
    const-string v2, "[DSMS-FRAMEWORK][POLICY]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unauthorized uid ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] name ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method
