.class Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;
.super Landroid/os/Handler;
.source "FullScreenAppsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FullScreenAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$200(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mSelectedShowType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$302(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$302(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$402(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$500(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V

    :cond_1
    return-void
.end method
