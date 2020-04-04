.class Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "SemNumberPickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2100(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v1, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    invoke-interface {p4, p6, v3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2200(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2300(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v4

    if-gt v3, v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v6, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2300(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2400(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_2

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$400(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2500(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Toast;

    move-result-object v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2600(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2502(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2500(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_5
    const-string v1, ""

    return-object v1

    :cond_6
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v1, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    invoke-interface {p4, p6, v3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2100(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_9

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v8}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2700(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    return-object v0

    :cond_7
    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    return-object v0

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$400(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2500(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Toast;

    move-result-object v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2600(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2502(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2500(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_b
    const-string v1, ""

    return-object v1
.end method

.method protected getAcceptedChars()[C
    .locals 1

    invoke-static {}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2000()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
