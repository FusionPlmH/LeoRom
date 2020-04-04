.class Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;
.super Ljava/lang/Object;
.source "ConfirmLockDirection.java"

# interfaces
.implements Lcom/android/internal/widget/DirectionLockTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionDetected(Ljava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$100(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$200(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f120722

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$300(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$200(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$200(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120730

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$400(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$500(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    const-string v0, "FINGER_LIFT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$600(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$600(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$700(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/view/animation/AlphaAnimation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const-string v0, "FINGER_LIFT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v0, p1, v2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$800(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$100(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xa

    if-lt v0, v3, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$100(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$200(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f12072c

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$200(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12072b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onDirectionStarted()V
    .locals 0

    return-void
.end method
