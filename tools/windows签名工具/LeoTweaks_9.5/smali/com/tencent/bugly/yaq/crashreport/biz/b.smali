.class public Lcom/tencent/bugly/yaq/crashreport/biz/b;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:Lcom/tencent/bugly/yaq/crashreport/biz/a;

.field private static b:Z

.field private static c:I

.field private static d:J

.field private static e:J

.field private static f:J

.field private static g:I

.field private static h:J

.field private static i:J

.field private static j:J

.field private static k:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private static l:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/16 v0, 0xa

    sput v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->c:I

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->d:J

    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->e:J

    sput-wide v4, Lcom/tencent/bugly/yaq/crashreport/biz/b;->f:J

    sput-wide v4, Lcom/tencent/bugly/yaq/crashreport/biz/b;->j:J

    sput-object v2, Lcom/tencent/bugly/yaq/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    sput-object v2, Lcom/tencent/bugly/yaq/crashreport/biz/b;->l:Ljava/lang/Class;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->m:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 6

    sget-object v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->a:Lcom/tencent/bugly/yaq/crashreport/biz/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->a:Lcom/tencent/bugly/yaq/crashreport/biz/a;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/tencent/bugly/yaq/crashreport/biz/a;->a(IZJ)V

    :cond_0
    return-void
.end method

.method public static a(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/yaq/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    iget-wide p0, v0, Lcom/tencent/bugly/yaq/crashreport/common/strategy/StrategyBean;->q:J

    :cond_0
    sput-wide p0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->f:J

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->b:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    :cond_2
    if-eqz v0, :cond_3

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/yaq/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/tencent/bugly/yaq/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->b:Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/bugly/yaq/BuglyStrategy;)V
    .locals 4

    const-wide/16 v2, 0x0

    sget-boolean v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->e:Z

    sput-boolean v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->m:Z

    new-instance v0, Lcom/tencent/bugly/yaq/crashreport/biz/a;

    sget-boolean v1, Lcom/tencent/bugly/yaq/crashreport/biz/b;->m:Z

    invoke-direct {v0, p0, v1}, Lcom/tencent/bugly/yaq/crashreport/biz/a;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->a:Lcom/tencent/bugly/yaq/crashreport/biz/a;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->b:Z

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/bugly/yaq/BuglyStrategy;->getUserInfoActivity()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->l:Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/tencent/bugly/yaq/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v0

    :goto_1
    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    invoke-static {p0, p1}, Lcom/tencent/bugly/yaq/crashreport/biz/b;->c(Landroid/content/Context;Lcom/tencent/bugly/yaq/BuglyStrategy;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/w;->a()Lcom/tencent/bugly/yaq/proguard/w;

    move-result-object v2

    new-instance v3, Lcom/tencent/bugly/yaq/crashreport/biz/b$1;

    invoke-direct {v3, p0, p1}, Lcom/tencent/bugly/yaq/crashreport/biz/b$1;-><init>(Landroid/content/Context;Lcom/tencent/bugly/yaq/BuglyStrategy;)V

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/bugly/yaq/proguard/w;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public static a(Lcom/tencent/bugly/yaq/crashreport/common/strategy/StrategyBean;Z)V
    .locals 6

    const-wide/16 v4, 0x0

    sget-object v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->a:Lcom/tencent/bugly/yaq/crashreport/biz/a;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    sget-object v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->a:Lcom/tencent/bugly/yaq/crashreport/biz/a;

    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/w;->a()Lcom/tencent/bugly/yaq/proguard/w;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/tencent/bugly/yaq/crashreport/biz/a$2;

    invoke-direct {v2, v0}, Lcom/tencent/bugly/yaq/crashreport/biz/a$2;-><init>(Lcom/tencent/bugly/yaq/crashreport/biz/a;)V

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/yaq/proguard/w;->a(Ljava/lang/Runnable;)Z

    :cond_0
    if-nez p0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-wide v0, p0, Lcom/tencent/bugly/yaq/crashreport/common/strategy/StrategyBean;->q:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    iget-wide v0, p0, Lcom/tencent/bugly/yaq/crashreport/common/strategy/StrategyBean;->q:J

    sput-wide v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->e:J

    :cond_3
    iget v0, p0, Lcom/tencent/bugly/yaq/crashreport/common/strategy/StrategyBean;->w:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/tencent/bugly/yaq/crashreport/common/strategy/StrategyBean;->w:I

    sput v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->c:I

    :cond_4
    iget-wide v0, p0, Lcom/tencent/bugly/yaq/crashreport/common/strategy/StrategyBean;->x:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/tencent/bugly/yaq/crashreport/common/strategy/StrategyBean;->x:J

    sput-wide v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->d:J

    goto :goto_0
.end method

.method static synthetic b(J)J
    .locals 0

    sput-wide p0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->j:J

    return-wide p0
.end method

.method static synthetic b()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->l:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Lcom/tencent/bugly/yaq/BuglyStrategy;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/bugly/yaq/crashreport/biz/b;->c(Landroid/content/Context;Lcom/tencent/bugly/yaq/BuglyStrategy;)V

    return-void
.end method

.method static synthetic c()J
    .locals 2

    sget-wide v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->i:J

    return-wide v0
.end method

.method static synthetic c(J)J
    .locals 0

    sput-wide p0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->h:J

    return-wide p0
.end method

.method private static c(Landroid/content/Context;Lcom/tencent/bugly/yaq/BuglyStrategy;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/bugly/yaq/BuglyStrategy;->recordUserInfoOnceADay()Z

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/bugly/yaq/BuglyStrategy;->isEnableUserInfo()Z

    move-result v0

    :cond_0
    if-eqz v1, :cond_6

    invoke-static {p0}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    move-result-object v2

    iget-object v0, v2, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->d:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/yaq/crashreport/biz/b;->a:Lcom/tencent/bugly/yaq/crashreport/biz/a;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/yaq/crashreport/biz/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/yaq/crashreport/biz/UserInfoBean;

    iget-object v4, v0, Lcom/tencent/bugly/yaq/crashreport/biz/UserInfoBean;->n:Ljava/lang/String;

    iget-object v5, v2, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v0, Lcom/tencent/bugly/yaq/crashreport/biz/UserInfoBean;->b:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/z;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

    iget-wide v6, v0, Lcom/tencent/bugly/yaq/crashreport/biz/UserInfoBean;->e:J

    cmp-long v4, v6, v4

    if-ltz v4, :cond_3

    iget-wide v0, v0, Lcom/tencent/bugly/yaq/crashreport/biz/UserInfoBean;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->a:Lcom/tencent/bugly/yaq/crashreport/biz/a;

    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/w;->a()Lcom/tencent/bugly/yaq/proguard/w;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/tencent/bugly/yaq/crashreport/biz/a$2;

    invoke-direct {v2, v0}, Lcom/tencent/bugly/yaq/crashreport/biz/a$2;-><init>(Lcom/tencent/bugly/yaq/crashreport/biz/a;)V

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/yaq/proguard/w;->a(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    :cond_2
    :goto_2
    return-void

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    invoke-static {}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->b()Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    move-result-object v4

    if-eqz v4, :cond_a

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v6, :cond_9

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "onCreate"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    :cond_7
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.app.Activity"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v2, 0x1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_f

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->a(Z)V

    :goto_4
    iput-object v1, v4, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->p:Ljava/lang/String;

    :cond_a
    if-eqz v0, :cond_d

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_d

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    :cond_b
    if-eqz v0, :cond_d

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/yaq/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v1, :cond_c

    new-instance v1, Lcom/tencent/bugly/yaq/crashreport/biz/b$2;

    invoke-direct {v1}, Lcom/tencent/bugly/yaq/crashreport/biz/b$2;-><init>()V

    sput-object v1, Lcom/tencent/bugly/yaq/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    :cond_c
    sget-object v1, Lcom/tencent/bugly/yaq/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    :goto_5
    sget-boolean v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->m:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->i:J

    sget-object v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->a:Lcom/tencent/bugly/yaq/crashreport/biz/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/tencent/bugly/yaq/crashreport/biz/a;->a(IZJ)V

    const-string v0, "[session] launch app, new start"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    sget-object v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->a:Lcom/tencent/bugly/yaq/crashreport/biz/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/yaq/crashreport/biz/a;->a()V

    sget-object v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->a:Lcom/tencent/bugly/yaq/crashreport/biz/a;

    const-wide/32 v2, 0x1499700

    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/w;->a()Lcom/tencent/bugly/yaq/proguard/w;

    move-result-object v1

    new-instance v4, Lcom/tencent/bugly/yaq/crashreport/biz/a$c;

    invoke-direct {v4, v0, v2, v3}, Lcom/tencent/bugly/yaq/crashreport/biz/a$c;-><init>(Lcom/tencent/bugly/yaq/crashreport/biz/a;J)V

    invoke-virtual {v1, v4, v2, v3}, Lcom/tencent/bugly/yaq/proguard/w;->a(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_e
    const-string v1, "background"

    goto :goto_4

    :cond_f
    const-string v1, "unknown"

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method static synthetic d()J
    .locals 2

    sget-wide v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->h:J

    return-wide v0
.end method

.method static synthetic e()J
    .locals 2

    sget-wide v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->f:J

    return-wide v0
.end method

.method static synthetic f()J
    .locals 2

    sget-wide v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->e:J

    return-wide v0
.end method

.method static synthetic g()I
    .locals 2

    sget v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->g:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/tencent/bugly/yaq/crashreport/biz/b;->g:I

    return v0
.end method

.method static synthetic h()I
    .locals 1

    sget v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->g:I

    return v0
.end method

.method static synthetic i()I
    .locals 1

    sget v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->c:I

    return v0
.end method

.method static synthetic j()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->m:Z

    return v0
.end method

.method static synthetic k()J
    .locals 2

    sget-wide v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->j:J

    return-wide v0
.end method

.method static synthetic l()J
    .locals 2

    sget-wide v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->d:J

    return-wide v0
.end method
