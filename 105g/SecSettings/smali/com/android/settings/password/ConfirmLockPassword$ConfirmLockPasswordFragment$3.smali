.class Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

.field final synthetic val$activityRootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iput-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->val$activityRootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->val$activityRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$800(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x4

    div-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v2, v2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v2, v2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->isListening()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v2, v2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->startListening()V

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$900(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$900(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v2, v2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v2, v2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->isListening()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v2, v2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->stopListening()V

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$900(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$900(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
