.class public Lcom/samsung/android/sysint/SemSysIntManager;
.super Ljava/lang/Object;
.source "SemSysIntManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final RESULT_SEPERATOR:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/samsung/android/sysint/ISysIntService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/samsung/android/sysint/SemSysIntManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sysint/SemSysIntManager;->TAG:Ljava/lang/String;

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sysint/SemSysIntManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sysint/ISysIntService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sysint/SemSysIntManager;->mService:Lcom/samsung/android/sysint/ISysIntService;

    iput-object p2, p0, Lcom/samsung/android/sysint/SemSysIntManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getAppListWithConfidence(Lcom/samsung/android/sysint/stats/SysIntRequest;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sysint/stats/SysIntRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/sysint/SysIntResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sysint/SemSysIntManager;->mService:Lcom/samsung/android/sysint/ISysIntService;

    invoke-interface {v2, p1}, Lcom/samsung/android/sysint/ISysIntService;->requestModelInference(Lcom/samsung/android/sysint/stats/SysIntRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    add-int/lit8 v7, v5, 0x1

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/sysint/SysIntResponse;

    invoke-direct {v8, v6, v7}, Lcom/samsung/android/sysint/SysIntResponse;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/sysint/SemSysIntManager;->TAG:Ljava/lang/String;

    const-string v3, "Service failure"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v1

    :catch_1
    move-exception v2

    sget-object v3, Lcom/samsung/android/sysint/SemSysIntManager;->TAG:Ljava/lang/String;

    const-string v4, "Returned invalid confidence value"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public getNextAppRanking(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sysint/SysIntResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sysint/stats/SysIntRequest;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/sysint/stats/SysIntRequest;-><init>(IILjava/util/ArrayList;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sysint/SemSysIntManager;->getAppListWithConfidence(Lcom/samsung/android/sysint/stats/SysIntRequest;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getNextAppRanking(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sysint/SysIntResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sysint/stats/SysIntRequest;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/sysint/stats/SysIntRequest;-><init>(IILjava/util/ArrayList;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sysint/SemSysIntManager;->getAppListWithConfidence(Lcom/samsung/android/sysint/stats/SysIntRequest;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public isCallerSysInt()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sysint/SemSysIntManager;->mService:Lcom/samsung/android/sysint/ISysIntService;

    invoke-interface {v0}, Lcom/samsung/android/sysint/ISysIntService;->isCallerSysInt()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public isSysIntRunning()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sysint/SemSysIntManager;->mService:Lcom/samsung/android/sysint/ISysIntService;

    invoke-interface {v0}, Lcom/samsung/android/sysint/ISysIntService;->isSysIntRunning()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public launchFeedbackForNextApp(Ljava/lang/String;JLjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sysint/SemSysIntManager;->mService:Lcom/samsung/android/sysint/ISysIntService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/sysint/ISysIntService;->launchFeedbackForNextApp(Ljava/lang/String;JLjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sysint/SemSysIntManager;->TAG:Ljava/lang/String;

    const-string v2, "Service failure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
