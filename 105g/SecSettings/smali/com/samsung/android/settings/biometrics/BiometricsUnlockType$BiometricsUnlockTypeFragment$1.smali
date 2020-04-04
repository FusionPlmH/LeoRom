.class Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;
.super Ljava/lang/Object;
.source "BiometricsUnlockType.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->addBottomButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const-string v0, "BiometricsUnlockTYpe"

    const-string v1, "onClick : OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$000(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/16 v3, 0x100

    const/16 v4, 0x1000

    const/16 v5, 0x10

    if-eqz v0, :cond_0

    const-string v0, "BiometricsUnlockTYpe"

    const-string v6, "face unlock"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$100(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$200(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v7}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$300(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)I

    move-result v7

    invoke-static {v0, v6, v5, v7}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$100(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$200(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$300(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)I

    move-result v6

    invoke-static {v0, v5, v4, v6}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$100(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$200(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$300(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)I

    move-result v5

    invoke-static {v0, v4, v3, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$100(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$300(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceStayOnLockScreen(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$100(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$300(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;ZI)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$400(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BiometricsUnlockTYpe"

    const-string v1, "iris unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$100(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$200(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$300(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)I

    move-result v2

    invoke-static {v0, v1, v3, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$100(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$200(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$300(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)I

    move-result v2

    invoke-static {v0, v1, v4, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$100(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$200(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$300(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)I

    move-result v2

    invoke-static {v0, v1, v5, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$500(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "BiometricsUnlockTYpe"

    const-string v6, "intelligent scan unlock"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$100(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$200(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v7}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$300(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)I

    move-result v7

    invoke-static {v0, v6, v3, v7}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$100(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$200(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$300(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)I

    move-result v6

    invoke-static {v0, v3, v5, v6}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$100(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$200(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$300(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)I

    move-result v5

    invoke-static {v0, v3, v4, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$100(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$300(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getSmartScanUnlockWithoutSwipeValue(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$100(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$300(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanUnlockWithoutSwipeValue(Landroid/content/Context;ZI)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$100(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$300(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getSmartScanStayOnLockScreen(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$100(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->access$300(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanStayOnLockScreen(Landroid/content/Context;ZI)V

    goto :goto_0

    :cond_3
    const-string v0, "BiometricsUnlockTYpe"

    const-string v1, "Lock type doesn\'t selected! Wrong case!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->finish()V

    return-void
.end method
