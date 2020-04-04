.class Lcom/android/server/fingerprint/AuthenticationClient$DozeManager$2;
.super Ljava/lang/Object;
.source "AuthenticationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->handleWakeUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager$2;->this$1:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "FingerprintService"

    const-string v1, "PendingDozeOptical: run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager$2;->this$1:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    iget-object v0, v0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/fingerprint/AuthenticationClient;->semLimitDisplayState(ZZ)V

    return-void
.end method
