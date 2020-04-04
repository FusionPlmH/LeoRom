.class Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;
.super Landroid/os/Handler;
.source "CryptSDCardSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/encryption/CryptSDCardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$000(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$400(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$400(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$300(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V

    goto :goto_0

    :pswitch_2
    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$200(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$100(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V

    nop

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
