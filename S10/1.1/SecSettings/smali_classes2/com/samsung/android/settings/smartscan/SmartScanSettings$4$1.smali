.class Lcom/samsung/android/settings/smartscan/SmartScanSettings$4$1;
.super Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;
.source "SmartScanSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->onRemovalSucceeded(Lcom/samsung/android/bio/face/SemBioFace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Lcom/samsung/android/camera/iris/Iris;ILjava/lang/CharSequence;)V
    .locals 3

    const-string v0, "SsstSmartScanSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemovalError with iris : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->access$800(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V

    return-void
.end method

.method public onRemovalSucceeded(Lcom/samsung/android/camera/iris/Iris;)V
    .locals 3

    const-string v0, "SsstSmartScanSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemovalSucceeded : iris deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->access$100(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    iget-object v1, v1, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->access$200(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    iget-object v2, v2, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->access$300(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getIntelligentBiometricsLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->access$100(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    iget-object v1, v1, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->access$200(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    iget-object v2, v2, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->access$300(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->removeSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->access$500(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->access$500(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->access$600(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->access$600(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->access$100(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    iget-object v1, v1, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->access$200(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    iget-object v2, v2, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->access$300(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->access$100(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    iget-object v1, v1, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->access$200(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    iget-object v2, v2, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->access$300(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->removeIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SsstSmartScanSettings"

    const-string v1, "onRemovalSucceeded[iris] : skip update screen after destory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->access$700(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->access$800(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V

    return-void
.end method