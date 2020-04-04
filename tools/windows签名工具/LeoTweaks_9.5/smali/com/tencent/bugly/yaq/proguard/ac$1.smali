.class final Lcom/tencent/bugly/yaq/proguard/ac$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/yaq/proguard/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/yaq/proguard/ac;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/yaq/proguard/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/yaq/proguard/ac$1;->a:Lcom/tencent/bugly/yaq/proguard/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/bugly/yaq/proguard/ac$1;->a:Lcom/tencent/bugly/yaq/proguard/ac;

    invoke-virtual {v0}, Lcom/tencent/bugly/yaq/proguard/ac;->c()V

    iget-object v0, p0, Lcom/tencent/bugly/yaq/proguard/ac$1;->a:Lcom/tencent/bugly/yaq/proguard/ac;

    iget-object v0, v0, Lcom/tencent/bugly/yaq/proguard/ac;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/ab;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/yaq/proguard/ac$1;->a:Lcom/tencent/bugly/yaq/proguard/ac;

    invoke-static {v1}, Lcom/tencent/bugly/yaq/proguard/ac;->a(Lcom/tencent/bugly/yaq/proguard/ac;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/bugly/yaq/proguard/ac$1;->a:Lcom/tencent/bugly/yaq/proguard/ac;

    iget-wide v2, v2, Lcom/tencent/bugly/yaq/proguard/ac;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
