.class public Lcom/tencent/bugly/yaq/CrashModule;
.super Lcom/tencent/bugly/yaq/a;
.source "BUGLY"


# static fields
.field public static final MODULE_ID:I = 0x3ec

.field private static c:I

.field private static e:Lcom/tencent/bugly/yaq/CrashModule;


# instance fields
.field private a:J

.field private b:Lcom/tencent/bugly/yaq/BuglyStrategy$a;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/bugly/yaq/CrashModule;->c:I

    new-instance v0, Lcom/tencent/bugly/yaq/CrashModule;

    invoke-direct {v0}, Lcom/tencent/bugly/yaq/CrashModule;-><init>()V

    sput-object v0, Lcom/tencent/bugly/yaq/CrashModule;->e:Lcom/tencent/bugly/yaq/CrashModule;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/yaq/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/yaq/CrashModule;->d:Z

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Lcom/tencent/bugly/yaq/BuglyStrategy;)V
    .locals 6

    monitor-enter p0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/bugly/yaq/BuglyStrategy;->getLibBuglySOFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    move-result-object v1

    iput-object v0, v1, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->m:Ljava/lang/String;

    const-string v1, "setted libBugly.so file path :%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p2}, Lcom/tencent/bugly/yaq/BuglyStrategy;->getCrashHandleCallback()Lcom/tencent/bugly/yaq/BuglyStrategy$a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/tencent/bugly/yaq/BuglyStrategy;->getCrashHandleCallback()Lcom/tencent/bugly/yaq/BuglyStrategy$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/yaq/CrashModule;->b:Lcom/tencent/bugly/yaq/BuglyStrategy$a;

    const-string v0, "setted CrashHanldeCallback"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p2}, Lcom/tencent/bugly/yaq/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lcom/tencent/bugly/yaq/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/yaq/CrashModule;->a:J

    const-string v0, "setted delay: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/tencent/bugly/yaq/CrashModule;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/tencent/bugly/yaq/CrashModule;
    .locals 2

    sget-object v0, Lcom/tencent/bugly/yaq/CrashModule;->e:Lcom/tencent/bugly/yaq/CrashModule;

    const/16 v1, 0x3ec

    iput v1, v0, Lcom/tencent/bugly/yaq/CrashModule;->id:I

    sget-object v0, Lcom/tencent/bugly/yaq/CrashModule;->e:Lcom/tencent/bugly/yaq/CrashModule;

    return-object v0
.end method


# virtual methods
.method public getTables()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "t_cr"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public declared-synchronized hasInitialized()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/CrashModule;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/content/Context;ZLcom/tencent/bugly/yaq/BuglyStrategy;)V
    .locals 6

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/CrashModule;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "Initializing crash module."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/n;->a()Lcom/tencent/bugly/yaq/proguard/n;

    move-result-object v0

    const/16 v1, 0x3ec

    sget v2, Lcom/tencent/bugly/yaq/CrashModule;->c:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/tencent/bugly/yaq/CrashModule;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/yaq/proguard/n;->a(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/yaq/CrashModule;->d:Z

    invoke-static {p1}, Lcom/tencent/bugly/yaq/crashreport/CrashReport;->setContext(Landroid/content/Context;)V

    invoke-direct {p0, p1, p3}, Lcom/tencent/bugly/yaq/CrashModule;->a(Landroid/content/Context;Lcom/tencent/bugly/yaq/BuglyStrategy;)V

    const/16 v0, 0x3ec

    iget-object v3, p0, Lcom/tencent/bugly/yaq/CrashModule;->b:Lcom/tencent/bugly/yaq/BuglyStrategy$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/tencent/bugly/yaq/crashreport/crash/c;->a(ILandroid/content/Context;ZLcom/tencent/bugly/yaq/BuglyStrategy$a;Lcom/tencent/bugly/yaq/proguard/o;Ljava/lang/String;)Lcom/tencent/bugly/yaq/crashreport/crash/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/bugly/yaq/crashreport/crash/c;->e()V

    invoke-virtual {v2}, Lcom/tencent/bugly/yaq/crashreport/crash/c;->m()V

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/tencent/bugly/yaq/BuglyStrategy;->isEnableNativeCrashMonitor()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {v2}, Lcom/tencent/bugly/yaq/crashreport/crash/c;->g()V

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/tencent/bugly/yaq/BuglyStrategy;->isEnableANRCrashMonitor()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    invoke-virtual {v2}, Lcom/tencent/bugly/yaq/crashreport/crash/c;->h()V

    :goto_2
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/tencent/bugly/yaq/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v0

    :goto_3
    invoke-virtual {v2, v0, v1}, Lcom/tencent/bugly/yaq/crashreport/crash/c;->a(J)V

    invoke-virtual {v2}, Lcom/tencent/bugly/yaq/crashreport/crash/c;->l()V

    invoke-static {p1}, Lcom/tencent/bugly/yaq/crashreport/crash/d;->a(Landroid/content/Context;)Lcom/tencent/bugly/yaq/crashreport/crash/d;

    invoke-static {}, Lcom/tencent/bugly/yaq/crashreport/crash/BuglyBroadcastReceiver;->getInstance()Lcom/tencent/bugly/yaq/crashreport/crash/BuglyBroadcastReceiver;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/yaq/crashreport/crash/BuglyBroadcastReceiver;->addFilter(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/yaq/crashreport/crash/BuglyBroadcastReceiver;->register(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/n;->a()Lcom/tencent/bugly/yaq/proguard/n;

    move-result-object v0

    const/16 v1, 0x3ec

    sget v2, Lcom/tencent/bugly/yaq/CrashModule;->c:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/tencent/bugly/yaq/CrashModule;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/yaq/proguard/n;->a(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    const-string v0, "[crash] Closed native crash monitor!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/tencent/bugly/yaq/crashreport/crash/c;->f()V

    goto :goto_1

    :cond_5
    const-string v0, "[crash] Closed ANR monitor!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/tencent/bugly/yaq/crashreport/crash/c;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_3
.end method

.method public onServerStrategyChanged(Lcom/tencent/bugly/yaq/crashreport/common/strategy/StrategyBean;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/yaq/crashreport/crash/c;->a()Lcom/tencent/bugly/yaq/crashreport/crash/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/yaq/crashreport/crash/c;->a(Lcom/tencent/bugly/yaq/crashreport/common/strategy/StrategyBean;)V

    goto :goto_0
.end method
