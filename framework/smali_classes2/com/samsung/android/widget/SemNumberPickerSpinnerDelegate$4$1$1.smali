.class Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;
.super Ljava/lang/Object;
.source "SemNumberPickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$800(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$1100(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$1200(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$1100(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$1302(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)I

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$800(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->val$forwardDistance:I

    neg-int v5, v0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$1000(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x359

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x22d

    goto :goto_0

    :goto_1
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1$1;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;)V

    const-wide/16 v2, 0x359

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
