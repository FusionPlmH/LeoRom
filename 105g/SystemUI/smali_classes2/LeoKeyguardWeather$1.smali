.class Lcom/android/systemui/fusionleo/LeoKeyguardWeather$1;
.super Ljava/lang/Object;
.source "LeoKeyguardWeather.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fusionleo/LeoKeyguardWeather;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fusionleo/LeoKeyguardWeather;

.field final synthetic val$h:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/systemui/fusionleo/LeoKeyguardWeather;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather$1;->this$0:Lcom/android/systemui/fusionleo/LeoKeyguardWeather;

    iput-object p2, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather$1;->val$h:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather$1;->this$0:Lcom/android/systemui/fusionleo/LeoKeyguardWeather;

    invoke-static {v0}, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->access$000(Lcom/android/systemui/fusionleo/LeoKeyguardWeather;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather$1;->this$0:Lcom/android/systemui/fusionleo/LeoKeyguardWeather;

    invoke-static {v0, v1}, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->access$002(Lcom/android/systemui/fusionleo/LeoKeyguardWeather;I)I

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather$1;->val$h:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    :try_start_0
    const-string v0, "android.widget.RemoteViews$OnClickHandler"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather$1;->this$0:Lcom/android/systemui/fusionleo/LeoKeyguardWeather;

    const-class v4, Landroid/appwidget/AppWidgetHost;

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const-class v8, Landroid/os/Looper;

    const/4 v9, 0x3

    aput-object v8, v6, v9

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather$1;->this$0:Lcom/android/systemui/fusionleo/LeoKeyguardWeather;

    invoke-static {v6}, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->access$200(Lcom/android/systemui/fusionleo/LeoKeyguardWeather;)Landroid/content/Context;

    move-result-object v6

    aput-object v6, v5, v3

    const v6, 0x4b455889    # 1.2933257E7f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x0

    aput-object v1, v5, v7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    aput-object v1, v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetHost;

    invoke-static {v2, v1}, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->access$102(Lcom/android/systemui/fusionleo/LeoKeyguardWeather;Landroid/appwidget/AppWidgetHost;)Landroid/appwidget/AppWidgetHost;

    const-class v1, Landroid/appwidget/AppWidgetHost;

    const-string v2, "getAppWidgetIds"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather$1;->this$0:Lcom/android/systemui/fusionleo/LeoKeyguardWeather;

    invoke-static {v2}, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->access$100(Lcom/android/systemui/fusionleo/LeoKeyguardWeather;)Landroid/appwidget/AppWidgetHost;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    iget-object v5, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather$1;->this$0:Lcom/android/systemui/fusionleo/LeoKeyguardWeather;

    invoke-static {v5}, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->access$100(Lcom/android/systemui/fusionleo/LeoKeyguardWeather;)Landroid/appwidget/AppWidgetHost;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather$1;->this$0:Lcom/android/systemui/fusionleo/LeoKeyguardWeather;

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather$1;->this$0:Lcom/android/systemui/fusionleo/LeoKeyguardWeather;

    invoke-static {v2}, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->access$200(Lcom/android/systemui/fusionleo/LeoKeyguardWeather;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->access$302(Lcom/android/systemui/fusionleo/LeoKeyguardWeather;Landroid/appwidget/AppWidgetManager;)Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather$1;->this$0:Lcom/android/systemui/fusionleo/LeoKeyguardWeather;

    invoke-static {v1, v7}, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->access$002(Lcom/android/systemui/fusionleo/LeoKeyguardWeather;I)I

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather$1;->this$0:Lcom/android/systemui/fusionleo/LeoKeyguardWeather;

    invoke-virtual {v1}, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->startView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void
.end method
