.class Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$3;
.super Landroid/database/ContentObserver;
.source "MultiWindowSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->access$000(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->access$000(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->access$000(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isNaviBarHideAndGestureTurnOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->access$200(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->access$300(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->access$200(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->access$300(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V

    :goto_1
    return-void
.end method
