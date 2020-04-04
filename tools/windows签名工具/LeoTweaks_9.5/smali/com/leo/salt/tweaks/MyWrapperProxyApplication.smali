.class public Lcom/leo/salt/tweaks/MyWrapperProxyApplication;
.super Lcom/wrapper/proxyapplication/WrapperProxyApplication;
.source "MyWrapperProxyApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/wrapper/proxyapplication/WrapperProxyApplication;-><init>()V

    return-void
.end method


# virtual methods
.method protected initProxyApplication(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_0
    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    :cond_0
    invoke-static {p1, v1}, Lcom/wrapper/proxyapplication/Util;->PrepareSecurefiles(Landroid/content/Context;Ljava/util/zip/ZipFile;)I

    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    sget-object v4, Lcom/wrapper/proxyapplication/Util;->CPUABI:Ljava/lang/String;

    const-string v5, "x86"

    if-ne v4, v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/prodexdir/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->load(Ljava/lang/String;)V

    :goto_2
    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->onCreate()V

    return-void
.end method
