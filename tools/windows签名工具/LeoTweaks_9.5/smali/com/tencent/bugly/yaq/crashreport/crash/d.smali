.class public final Lcom/tencent/bugly/yaq/crashreport/crash/d;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Lcom/tencent/bugly/yaq/crashreport/crash/d;


# instance fields
.field private b:Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;

.field private c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

.field private d:Lcom/tencent/bugly/yaq/crashreport/crash/b;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->a:Lcom/tencent/bugly/yaq/crashreport/crash/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/yaq/crashreport/crash/c;->a()Lcom/tencent/bugly/yaq/crashreport/crash/c;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->b:Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;

    invoke-static {p1}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/yaq/crashreport/crash/c;->p:Lcom/tencent/bugly/yaq/crashreport/crash/b;

    iput-object v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->d:Lcom/tencent/bugly/yaq/crashreport/crash/b;

    iput-object p1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->e:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/w;->a()Lcom/tencent/bugly/yaq/proguard/w;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/yaq/crashreport/crash/d$1;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/yaq/crashreport/crash/d$1;-><init>(Lcom/tencent/bugly/yaq/crashreport/crash/d;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/yaq/proguard/w;->a(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a()Lcom/tencent/bugly/yaq/crashreport/crash/d;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->a:Lcom/tencent/bugly/yaq/crashreport/crash/d;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/bugly/yaq/crashreport/crash/d;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->a:Lcom/tencent/bugly/yaq/crashreport/crash/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/bugly/yaq/crashreport/crash/d;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/yaq/crashreport/crash/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->a:Lcom/tencent/bugly/yaq/crashreport/crash/d;

    :cond_0
    sget-object v0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->a:Lcom/tencent/bugly/yaq/crashreport/crash/d;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/bugly/yaq/crashreport/crash/d;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "[ExtraCrashManager] Trying to notify Bugly agents."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :try_start_0
    const-string v0, "com.tencent.bugly.agent.GameAgent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v0, "com.tencent.bugly"

    iget-object v2, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "yaq"

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, "sdkPackageName"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/tencent/bugly/yaq/proguard/z;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "[ExtraCrashManager] Bugly game agent has been notified."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "[ExtraCrashManager] no game agent"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/bugly/yaq/crashreport/crash/d;Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    :cond_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const-string v0, "[ExtraCrashManager] Unknown extra crash type: %d"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    return-void

    :pswitch_1
    const-string v0, "Cocos"

    :goto_1
    const-string v1, "[ExtraCrashManager] %s Crash Happen"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Lcom/tencent/bugly/yaq/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->b:Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "[ExtraCrashManager] There is no remote strategy, but still store it."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/yaq/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->b:Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/yaq/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    iget-boolean v2, v1, Lcom/tencent/bugly/yaq/crashreport/common/strategy/StrategyBean;->g:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->b:Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "[ExtraCrashManager] Crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/yaq/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/z;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    iget-object v2, v2, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/tencent/bugly/yaq/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "[ExtraCrashManager] Successfully handled."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    const-string v0, "Unity"

    goto :goto_1

    :pswitch_3
    const-string v0, "H5"

    goto :goto_1

    :cond_2
    packed-switch p2, :pswitch_data_1

    :cond_3
    :pswitch_4
    const/16 v1, 0x8

    if-ne p2, v1, :cond_4

    const/4 p2, 0x5

    :cond_4
    :try_start_1
    new-instance v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;

    invoke-direct {v5}, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/yaq/crashreport/common/info/b;->k()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->C:J

    invoke-static {}, Lcom/tencent/bugly/yaq/crashreport/common/info/b;->i()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->D:J

    invoke-static {}, Lcom/tencent/bugly/yaq/crashreport/common/info/b;->m()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->E:J

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->p()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->F:J

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->o()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->G:J

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->q()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->H:J

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->e:Landroid/content/Context;

    sget v2, Lcom/tencent/bugly/yaq/crashreport/crash/c;->e:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/tencent/bugly/yaq/proguard/z;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    iput p2, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->b:I

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    iget-object v1, v1, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->j:Ljava/lang/String;

    iput-object v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->w()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    const-string v1, ""

    if-eqz p5, :cond_8

    const-string v2, "\n"

    invoke-virtual {p5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_5

    const/4 v1, 0x0

    aget-object v1, v2, v1

    :cond_5
    move-object v2, p5

    :goto_2
    iput-object v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    iput-object v2, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->r:J

    iget-object v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/yaq/proguard/z;->b([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    sget v1, Lcom/tencent/bugly/yaq/crashreport/crash/c;->f:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/bugly/yaq/proguard/z;->a(IZ)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    iget-object v1, v1, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->v()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    iget-wide v2, v1, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->a:J

    iput-wide v2, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->M:J

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->a()Z

    move-result v1

    iput-boolean v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->N:Z

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->H()I

    move-result v1

    iput v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->P:I

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->I()I

    move-result v1

    iput v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->Q:I

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->B()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->G()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->d:Lcom/tencent/bugly/yaq/crashreport/crash/b;

    invoke-virtual {v1, v5}, Lcom/tencent/bugly/yaq/crashreport/crash/b;->c(Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;)V

    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/y;->a()[B

    move-result-object v1

    iput-object v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->y:[B

    iget-object v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    :cond_6
    if-eqz p6, :cond_7

    iget-object v1, v5, Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    invoke-interface {v1, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_7
    if-nez v5, :cond_9

    const-string v0, "[ExtraCrashManager] Failed to package crash data."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "[ExtraCrashManager] Successfully handled."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_5
    :try_start_2
    iget-boolean v1, v1, Lcom/tencent/bugly/yaq/crashreport/common/strategy/StrategyBean;->l:Z

    if-nez v1, :cond_3

    const-string v1, "[ExtraCrashManager] %s report is disabled."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/yaq/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "[ExtraCrashManager] Successfully handled."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_6
    :try_start_3
    iget-boolean v1, v1, Lcom/tencent/bugly/yaq/crashreport/common/strategy/StrategyBean;->m:Z

    if-nez v1, :cond_3

    const-string v1, "[ExtraCrashManager] %s report is disabled."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/yaq/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v0, "[ExtraCrashManager] Successfully handled."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    :try_start_4
    const-string v2, ""

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/z;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    iget-object v2, v2, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/tencent/bugly/yaq/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;)V

    iget-object v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->d:Lcom/tencent/bugly/yaq/crashreport/crash/b;

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/yaq/crashreport/crash/b;->a(Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/d;->d:Lcom/tencent/bugly/yaq/crashreport/crash/b;

    const-wide/16 v2, 0xbb8

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v2, v3, v1}, Lcom/tencent/bugly/yaq/crashreport/crash/b;->a(Lcom/tencent/bugly/yaq/crashreport/crash/CrashDetailBean;JZ)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_a
    const-string v0, "[ExtraCrashManager] Successfully handled."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_b
    const-string v0, "[ExtraCrashManager] Successfully handled."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "[ExtraCrashManager] Successfully handled."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/yaq/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/w;->a()Lcom/tencent/bugly/yaq/proguard/w;

    move-result-object v7

    new-instance v0, Lcom/tencent/bugly/yaq/crashreport/crash/d$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/bugly/yaq/crashreport/crash/d$2;-><init>(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v7, v0}, Lcom/tencent/bugly/yaq/proguard/w;->a(Ljava/lang/Runnable;)Z

    return-void
.end method
