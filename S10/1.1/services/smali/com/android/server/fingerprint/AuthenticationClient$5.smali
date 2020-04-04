.class Lcom/android/server/fingerprint/AuthenticationClient$5;
.super Ljava/lang/Object;
.source "AuthenticationClient.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/AuthenticationClient;->start()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/AuthenticationClient;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$800(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$800(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/fingerprint/AuthenticationClient;->access$502(Lcom/android/server/fingerprint/AuthenticationClient;Z)Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/fingerprint/AuthenticationClient;->access$502(Lcom/android/server/fingerprint/AuthenticationClient;Z)Z

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$700(Lcom/android/server/fingerprint/AuthenticationClient;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$700(Lcom/android/server/fingerprint/AuthenticationClient;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/fingerprint/AuthenticationClient;->access$702(Lcom/android/server/fingerprint/AuthenticationClient;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_2
    :goto_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
