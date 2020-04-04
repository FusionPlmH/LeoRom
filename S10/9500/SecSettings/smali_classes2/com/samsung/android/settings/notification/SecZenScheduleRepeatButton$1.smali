.class Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$1;
.super Ljava/lang/Object;
.source "SecZenScheduleRepeatButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->inflateRepeatBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

.field final synthetic val$buttonNumber:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$1;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    iput p2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$1;->val$buttonNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$1;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$000(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$1;->val$buttonNumber:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "ZenScheduleRepeatButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRepeatBtn[buttonNumber].isChecked() - true, buttonNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$1;->val$buttonNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$1;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$100(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$1;->val$buttonNumber:I

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$1;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$1;->val$buttonNumber:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->setSelectionMarkAnimator(IZ)V

    goto :goto_0

    :cond_0
    const-string v0, "ZenScheduleRepeatButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRepeatBtn[buttonNumber].isChecked() - false, buttonNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$1;->val$buttonNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$1;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    iget v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$1;->val$buttonNumber:I

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->setSelectionMarkAnimator(IZ)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$1;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$200(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)V

    return-void
.end method
