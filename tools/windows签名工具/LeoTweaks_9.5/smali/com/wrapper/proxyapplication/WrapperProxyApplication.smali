.class public abstract Lcom/wrapper/proxyapplication/WrapperProxyApplication;
.super Landroid/app/Application;
.source "WrapperProxyApplication.java"


# static fields
.field static baseContext:Landroid/content/Context;

.field static className:Ljava/lang/String;

.field static shellApp:Landroid/app/Application;

.field static tinkerApp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->shellApp:Landroid/app/Application;

    const-string v0, "com.leo.salt.tweaks.LeoAmberApplication"

    sput-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->className:Ljava/lang/String;

    const-string v0, "tinker not support"

    sput-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->tinkerApp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private declared-synchronized Fixappname()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->className:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->className:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->className:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->className:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static fixAndroid(Landroid/content/Context;Landroid/app/Application;)V
    .locals 4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/wrapper/proxyapplication/AndroidNClassLoader;->inject(Ljava/lang/ClassLoader;Landroid/app/Application;)Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static getVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v1, "0"

    goto :goto_0
.end method

.method static getWrapperProxyAppBaseContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->baseContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method native Ooo0ooO0oO()V
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->baseContext:Landroid/content/Context;

    sget-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->shellApp:Landroid/app/Application;

    if-nez v0, :cond_0

    sput-object p0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->shellApp:Landroid/app/Application;

    :cond_0
    const-string v0, "4.1.0.15"

    invoke-static {p1, v0}, Lcom/tencent/bugly/yaq/crashreport/CrashReport;->setAppVersion(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "900053609"

    invoke-static {p0, v1, v0}, Lcom/tencent/bugly/yaq/crashreport/CrashReport;->setSdkExtraData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "900053609"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/tencent/bugly/yaq/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->Fixappname()Z

    invoke-virtual {p0, p1}, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->initProxyApplication(Landroid/content/Context;)V

    return-void
.end method

.method protected abstract initProxyApplication(Landroid/content/Context;)V
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual {p0}, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->Ooo0ooO0oO()V

    return-void
.end method
