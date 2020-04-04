.class Lcom/samsung/android/settings/SecCmcModeEnabler$2;
.super Landroid/os/Handler;
.source "SecCmcModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SecCmcModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SecCmcModeEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SecCmcModeEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SecCmcModeEnabler$2;->this$0:Lcom/samsung/android/settings/SecCmcModeEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Mdec"

    const-string v1, "Settings: handler = EVENT_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/SecCmcModeEnabler$2;->this$0:Lcom/samsung/android/settings/SecCmcModeEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/SecCmcModeEnabler;->access$000(Lcom/samsung/android/settings/SecCmcModeEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cmc_activation_intermediate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    nop

    :goto_0
    return-void
.end method
