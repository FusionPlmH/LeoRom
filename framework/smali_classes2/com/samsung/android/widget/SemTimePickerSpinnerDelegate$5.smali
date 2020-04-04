.class Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$5;
.super Ljava/lang/Object;
.source "SemTimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$5;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$5;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->access$1100(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$5;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setEditTextMode(Z)V

    :cond_0
    return v0
.end method
