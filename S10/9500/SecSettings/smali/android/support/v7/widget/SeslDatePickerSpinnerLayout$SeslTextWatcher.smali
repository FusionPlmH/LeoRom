.class public Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;
.super Ljava/lang/Object;
.source "SeslDatePickerSpinnerLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeslTextWatcher"
.end annotation


# instance fields
.field private final INVALID_POSITION_ID:I

.field private final LAST_POSITION_ID:I

.field private mChangedLen:I

.field private mCheck:I

.field private mId:I

.field private mIsMonth:Z

.field private mMaxLen:I

.field private mNext:I

.field private mPrevText:Ljava/lang/String;

.field final synthetic this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;IIZ)V
    .locals 3

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->INVALID_POSITION_ID:I

    const/4 v1, 0x2

    iput v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->LAST_POSITION_ID:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mChangedLen:I

    iput p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    iput p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    iput-boolean p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mIsMonth:Z

    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mCheck:I

    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mCheck:I

    if-gez v2, :cond_0

    iput v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mCheck:I

    :cond_0
    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    add-int/lit8 v2, v2, 0x1

    if-le v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mNext:I

    return-void
.end method

.method private changeFocus()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2800(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "changeFocus() mNext : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mNext:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCheck : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mCheck:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mNext:I

    if-ltz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mCheck:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mNext:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    :cond_2
    return-void
.end method

.method private isFarsiLanguage()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$3000(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isMeaLanguage()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$3000(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private isMonthStr(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$3100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$3200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isNumericStr(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method private isSwaLanguage()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$3000(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ta"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "te"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "or"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ne"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "as"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "bn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "gu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "si"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "kn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private showInvalidValueEnteredToast(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2700(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2800(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2900(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2702(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2700(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "afterTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    iput p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mChangedLen:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "onTextChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v4

    iget v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v5, "onClick"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "onLongClick"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "TAG exists: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v5

    iget v6, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/EditText;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    return-void

    :cond_2
    iget-boolean v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mIsMonth:Z

    const/16 v6, 0xa

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_d

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mChangedLen:I

    if-ne v5, v8, :cond_9

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Samsung Keypad Num Month"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/SeslNumberPicker;->getMinValue()I

    move-result v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    if-ne v1, v11, :cond_5

    if-ge v10, v5, :cond_4

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    if-ge v6, v7, :cond_3

    nop

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, v8}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string v6, ""

    invoke-direct {v0, v6, v9}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto :goto_1

    :cond_5
    if-lez v1, :cond_8

    if-lt v5, v6, :cond_6

    const-string v6, "0"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, ""

    invoke-direct {v0, v6, v9}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    return-void

    :cond_6
    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "0"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    if-ge v10, v5, :cond_7

    const-string v6, ""

    invoke-direct {v0, v6, v9}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    return-void

    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    :cond_8
    :goto_1
    goto/16 :goto_7

    :cond_9
    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    invoke-direct {v0, v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->isNumericStr(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_20

    iget v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    if-lt v1, v5, :cond_b

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->isMeaLanguage()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-direct {v0, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->isMonthStr(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_7

    :cond_a
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_7

    :cond_b
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->isSwaLanguage()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->isFarsiLanguage()Z

    move-result v5

    if-eqz v5, :cond_20

    :cond_c
    if-lez v1, :cond_20

    invoke-direct {v0, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->isNumericStr(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_20

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_7

    :cond_d
    iget v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mChangedLen:I

    if-ne v5, v8, :cond_20

    iget v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    const/4 v10, 0x3

    if-ge v5, v10, :cond_17

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1000(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/SeslNumberPicker;->getMinValue()I

    move-result v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v12, v1, :cond_10

    iget v12, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    if-ne v1, v12, :cond_10

    if-ge v11, v5, :cond_f

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_e

    nop

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, v8}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto :goto_2

    :cond_e
    const-string v6, ""

    invoke-direct {v0, v6, v9}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    :goto_2
    return-void

    :cond_f
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto :goto_3

    :cond_10
    if-lt v5, v6, :cond_11

    if-eqz v11, :cond_13

    :cond_11
    const/16 v6, 0x14

    if-lt v5, v6, :cond_12

    if-eqz v11, :cond_13

    if-eq v11, v8, :cond_13

    :cond_12
    const/16 v6, 0x1e

    if-lt v5, v6, :cond_14

    if-eqz v11, :cond_13

    if-eq v11, v8, :cond_13

    if-ne v11, v7, :cond_14

    :cond_13
    const-string v6, ""

    invoke-direct {v0, v6, v9}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    return-void

    :cond_14
    if-le v11, v10, :cond_16

    if-ge v11, v5, :cond_15

    const-string v6, ""

    invoke-direct {v0, v6, v9}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    return-void

    :cond_15
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    :cond_16
    :goto_3
    goto/16 :goto_7

    :cond_17
    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/SeslNumberPicker;->getMinValue()I

    move-result v5

    iget-object v6, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/SeslNumberPicker;->getMaxValue()I

    move-result v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v12, v1, :cond_1d

    iget v12, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    if-ne v1, v12, :cond_1d

    if-lt v11, v5, :cond_1c

    if-le v11, v6, :cond_18

    goto/16 :goto_6

    :cond_18
    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v12}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v12

    if-eqz v12, :cond_19

    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v12}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v7/widget/SeslNumberPicker;->getValue()I

    move-result v12

    sub-int/2addr v12, v8

    goto :goto_4

    :cond_19
    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v12}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v7/widget/SeslNumberPicker;->getValue()I

    move-result v12

    :goto_4
    iget-object v13, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v13}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->clear()V

    iget-object v13, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v13}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v13

    iget-object v14, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v14}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1000(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v7/widget/SeslNumberPicker;->getValue()I

    move-result v14

    invoke-virtual {v13, v11, v12, v14}, Ljava/util/Calendar;->set(III)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->clear()V

    iget-object v14, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v14}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2500(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v14, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v14}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2500(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v14, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v14}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2500(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v14

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v13, v8, v7, v14}, Ljava/util/Calendar;->set(III)V

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v7

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v8}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2600(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    goto :goto_5

    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto :goto_7

    :cond_1b
    :goto_5
    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, v10}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    return-void

    :cond_1c
    :goto_6
    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, v10}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    return-void

    :cond_1d
    const-wide v12, 0x408f400000000000L    # 1000.0

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    add-int/lit8 v7, v1, -0x1

    int-to-double v9, v7

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    div-double/2addr v12, v9

    double-to-int v7, v12

    const-string v9, ""

    if-eq v1, v8, :cond_1e

    add-int/lit8 v8, v1, -0x1

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :cond_1e
    div-int v8, v5, v7

    if-lt v11, v8, :cond_1f

    div-int v8, v6, v7

    if-le v11, v8, :cond_20

    :cond_1f
    add-int/lit8 v8, v1, -0x1

    invoke-direct {v0, v9, v8}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    :cond_20
    :goto_7
    return-void
.end method
