.class Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$1;
.super Ljava/lang/Object;
.source "DeviceVisibilityEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->resume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$1;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "DeviceVisibilityEnabler"

    const-string v1, "resume - get value"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$1;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->access$000(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$1;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->access$100(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$1;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->access$100(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
