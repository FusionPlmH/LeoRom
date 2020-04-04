.class public Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;
.super Landroid/widget/LinearLayout;
.source "RecipientsMinusView.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->remove()V

    return-void
.end method

.method private remove()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0472

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0015

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView$1;-><init>(Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView$2;-><init>(Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFocus(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const v1, 0x7f0a0015

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
