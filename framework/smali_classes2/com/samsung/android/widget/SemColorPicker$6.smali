.class Lcom/samsung/android/widget/SemColorPicker$6;
.super Ljava/lang/Object;
.source "SemColorPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemColorPicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemColorPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemColorPicker$6;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$6;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemColorPicker;->access$700(Lcom/samsung/android/widget/SemColorPicker;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker$6;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemColorPicker;->access$800(Lcom/samsung/android/widget/SemColorPicker;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker$6;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/samsung/android/widget/SemColorPicker;->access$002(Lcom/samsung/android/widget/SemColorPicker;Z)Z

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker$6;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v3}, Lcom/samsung/android/widget/SemColorPicker;->access$700(Lcom/samsung/android/widget/SemColorPicker;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemColorPicker$6;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v4}, Lcom/samsung/android/widget/SemColorPicker;->access$100(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->setColor(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemColorPicker$6;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v4, v3}, Lcom/samsung/android/widget/SemColorPicker;->access$900(Lcom/samsung/android/widget/SemColorPicker;I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemColorPicker$6;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v4}, Lcom/samsung/android/widget/SemColorPicker;->access$500(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/widget/SemColorPicker$6;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v4}, Lcom/samsung/android/widget/SemColorPicker;->access$500(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
