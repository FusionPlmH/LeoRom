.class Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FloatingShortcutAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintAuthenticated(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$100(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)Lcom/android/systemui/statusbar/floating/ShortcutState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    new-instance v1, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->changeState(Lcom/android/systemui/statusbar/floating/ShortcutState;)V

    :cond_0
    return-void
.end method

.method public onFingerprintRunningStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$100(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)Lcom/android/systemui/statusbar/floating/ShortcutState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$200(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    :cond_0
    return-void
.end method

.method public onKeyguardConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$300(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)I

    move-result v1

    if-eq v1, v0, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onKeyguardConfigurationChanged() density "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$300(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$302(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;I)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$400(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$400(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$400(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$400(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$500(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->loadDimens()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$600(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->loadDimens()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$000(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    :cond_2
    return-void
.end method

.method public onLockModeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$200(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    return-void
.end method
