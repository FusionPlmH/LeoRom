.class final Lcom/tencent/bugly/yaq/proguard/z$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/yaq/proguard/z;->a(JLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:J

.field private synthetic b:Ljava/util/Map;

.field private synthetic c:Lcom/tencent/bugly/yaq/proguard/z;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/yaq/proguard/z;JLjava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/yaq/proguard/z$1;->c:Lcom/tencent/bugly/yaq/proguard/z;

    iput-wide p2, p0, Lcom/tencent/bugly/yaq/proguard/z$1;->a:J

    iput-object p4, p0, Lcom/tencent/bugly/yaq/proguard/z$1;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    const-string v0, "found visiable block, start to process!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/yaq/proguard/z$1;->c:Lcom/tencent/bugly/yaq/proguard/z;

    iget-object v1, p0, Lcom/tencent/bugly/yaq/proguard/z$1;->c:Lcom/tencent/bugly/yaq/proguard/z;

    iget-object v1, v1, Lcom/tencent/bugly/yaq/proguard/z;->b:Landroid/content/Context;

    iget-wide v2, p0, Lcom/tencent/bugly/yaq/proguard/z$1;->a:J

    iget-object v4, p0, Lcom/tencent/bugly/yaq/proguard/z$1;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/yaq/proguard/z;->a(Landroid/content/Context;JLjava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/yaq/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const-string v1, "handle anr error %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/yaq/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method
