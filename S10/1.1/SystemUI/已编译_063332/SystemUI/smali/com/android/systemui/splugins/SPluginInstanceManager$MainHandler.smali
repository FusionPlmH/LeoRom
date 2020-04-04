.class Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;
.super Landroid/os/Handler;
.source "SPluginInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/splugins/SPluginInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/splugins/SPluginInstanceManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_0
    const-string v1, "SPluginInstanceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PLUGIN_UPDATED => onPluginDisconnected mPackage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$600(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/systemui/splugins/SPlugin;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V

    iget-object v1, v0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPlugin:Ljava/lang/Object;

    instance-of v1, v1, Lcom/samsung/systemui/splugins/SPluginFragment;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/systemui/splugins/SPlugin;

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/SPlugin;->onDestroy()V

    goto/16 :goto_1

    :pswitch_1
    const-string v1, "SPluginInstanceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPluginConfigurationChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->access$300(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$600(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/systemui/splugins/SPlugin;

    invoke-interface {v1, v2}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginConfigurationChanged(Lcom/samsung/systemui/splugins/SPlugin;)V

    goto/16 :goto_1

    :pswitch_2
    const-string v1, "SPluginInstanceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPluginDisconnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->access$300(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mIsPkgChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v3}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$700(Lcom/android/systemui/splugins/SPluginInstanceManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$700(Lcom/android/systemui/splugins/SPluginInstanceManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$600(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/systemui/splugins/SPlugin;

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$600(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/systemui/splugins/SPlugin;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V

    :goto_0
    iget-object v1, v0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPlugin:Ljava/lang/Object;

    instance-of v1, v1, Lcom/samsung/systemui/splugins/SPluginFragment;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/systemui/splugins/SPlugin;

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/SPlugin;->onDestroy()V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$500(Lcom/android/systemui/splugins/SPluginInstanceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/splugins/SPluginPrefs;->setHasPlugins(Landroid/content/Context;)V

    const-string v1, "SPluginInstanceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPluginConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->access$300(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPlugin:Ljava/lang/Object;

    instance-of v1, v1, Lcom/samsung/systemui/splugins/SPluginFragment;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/systemui/splugins/SPlugin;

    iget-object v2, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v2}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$500(Lcom/android/systemui/splugins/SPluginInstanceManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->access$200(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/systemui/splugins/SPlugin;->onCreate(Landroid/content/Context;Landroid/content/Context;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/android/systemui/splugins/SPluginInstanceManager;->access$600(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/systemui/splugins/SPlugin;

    invoke-static {v0}, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->access$200(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V

    nop

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
