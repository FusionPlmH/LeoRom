.class Lcom/samsung/android/settings/guide/WifiSettingsGuider$1;
.super Landroid/os/Handler;
.source "WifiSettingsGuider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/guide/WifiSettingsGuider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/guide/WifiSettingsGuider;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$1;->this$0:Lcom/samsung/android/settings/guide/WifiSettingsGuider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$1;->this$0:Lcom/samsung/android/settings/guide/WifiSettingsGuider;

    invoke-static {v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->access$000(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$1;->this$0:Lcom/samsung/android/settings/guide/WifiSettingsGuider;

    invoke-virtual {v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onDestroy()V

    nop

    :goto_0
    return-void
.end method
