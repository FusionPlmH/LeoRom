.class Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;
.super Ljava/lang/Object;
.source "RegisterKnoxFingerPlusInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->initializeBottombar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$0:Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$0:Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->access$100(Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$0:Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b040f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$0:Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b040e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils$KnoxLogging;->addEvent(II)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$0:Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$0:Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->access$100(Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils$KnoxLogging;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$0:Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->access$100(Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$0:Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->access$200(Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$0:Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->access$200(Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$0:Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    const-string v2, "knox_fingerprint_entry"

    const/16 v3, 0x2711

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->startBiometricsLockSettings(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$0:Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x271b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$0:Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
