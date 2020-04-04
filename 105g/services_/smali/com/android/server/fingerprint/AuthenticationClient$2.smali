.class Lcom/android/server/fingerprint/AuthenticationClient$2;
.super Ljava/lang/Object;
.source "AuthenticationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/AuthenticationClient;->handleSystemUIEventForInDisplaySensor(I)V
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

    iput-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$300(Lcom/android/server/fingerprint/AuthenticationClient;)Lcom/android/server/fingerprint/SemVisualEffectView;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    new-instance v1, Lcom/android/server/fingerprint/SemVisualEffectView;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v2}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/fingerprint/SemVisualEffectView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$302(Lcom/android/server/fingerprint/AuthenticationClient;Lcom/android/server/fingerprint/SemVisualEffectView;)Lcom/android/server/fingerprint/SemVisualEffectView;

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$300(Lcom/android/server/fingerprint/AuthenticationClient;)Lcom/android/server/fingerprint/SemVisualEffectView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/SemVisualEffectView;->start(Lcom/android/server/fingerprint/SemVisualEffectView$IVisualEffectViewListener;)V

    return-void
.end method
