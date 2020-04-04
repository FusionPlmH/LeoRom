.class public Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;
.super Ljava/lang/Object;
.source "SeslTimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeslTextWatcher"
.end annotation


# instance fields
.field private changedLen:I

.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;II)V
    .locals 2

    iput-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changedLen:I

    iput p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mMaxLen:I

    iput p3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    iget v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mNext:I

    return-void
.end method

.method private changeFocus()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mNext:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mNext:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    iget-object v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->setMinute(I)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    :cond_2
    :goto_0
    return-void
.end method

.method private convertDigitCharacterToNumber(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1400()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-char v4, v1, v3

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    rem-int/lit8 v1, v0, 0xa

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1200(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aftertextchanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1200(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beforeTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->prevText:Ljava/lang/String;

    iput p4, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changedLen:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1200(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "onClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "onLongClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_0

    :pswitch_0
    iget v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changedLen:I

    if-ne v1, v2, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->convertDigitCharacterToNumber(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_4

    const/16 v2, 0x9

    if-gt v1, v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    :cond_4
    goto :goto_0

    :pswitch_1
    iget v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changedLen:I

    if-ne v1, v2, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mMaxLen:I

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->convertDigitCharacterToNumber(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_6

    if-le v1, v2, :cond_7

    iget-object v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    iget-object v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    :cond_7
    nop

    :cond_8
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
