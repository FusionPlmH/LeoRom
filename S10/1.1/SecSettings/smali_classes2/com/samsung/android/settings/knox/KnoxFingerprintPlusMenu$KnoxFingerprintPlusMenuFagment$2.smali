.class Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$2;
.super Landroid/os/Handler;
.source "KnoxFingerprintPlusMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$2;->this$0:Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "KnoxFingerprintPlusMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->convertEvtToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$2;->this$0:Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->handleError(ILjava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$2;->this$0:Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->access$102(Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$2;->this$0:Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;

    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->access$200(Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;ZI)V

    nop

    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$2;->this$0:Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->access$300(Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
