.class Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$2;
.super Landroid/content/BroadcastReceiver;
.source "DcmKeyguardLiveUXManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.intent.action.LAUNCHER_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->access$100(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/Rune;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "DcmKeyguardLiveUXManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "com.sec.android.intent.action.LAUNCHER_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->showDCMLiveUX()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->hideDCMLiveUX()V

    :cond_1
    :goto_0
    return-void
.end method
