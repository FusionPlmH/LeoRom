.class public Lcom/samsung/android/settings/security/Password;
.super Landroid/app/Activity;
.source "Password.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mDigits:Landroid/widget/TextView;

.field private mHeadrText:Landroid/widget/TextView;

.field private mPassword:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/security/Password;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    return-object v0
.end method

.method private keyPressed(I)V
    .locals 2

    const/16 v0, 0x43

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return-void
.end method

.method private match(Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/Password;->reasonable(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const v2, 0x7f1206f2

    if-eqz v0, :cond_1

    const-string v0, "****"

    iget-object v3, p0, Lcom/samsung/android/settings/security/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120e54

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/Password;->showAlert(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/Password;->showAlert(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_1
    const-string v0, "****"

    iget-object v3, p0, Lcom/samsung/android/settings/security/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/security/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/Password;->showAlert(Ljava/lang/String;)V

    return v1

    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_4
    return v1
.end method

.method private onPasswordConfirm()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/Password;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, ".password"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/security/Password;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/Password;->finish()V

    :cond_0
    return-void
.end method

.method private reasonable(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f1206f2

    if-eqz v0, :cond_1

    const-string v0, "****"

    iget-object v3, p0, Lcom/samsung/android/settings/security/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1207c4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/Password;->showAlert(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/Password;->showAlert(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x8

    if-le v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    const-string v0, "****"

    iget-object v3, p0, Lcom/samsung/android/settings/security/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f121150

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/Password;->showAlert(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/Password;->showAlert(Ljava/lang/String;)V

    :goto_2
    return v1
.end method

.method private setupKeypad()V
    .locals 3

    const v0, 0x7f0a0588

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/Password;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f0a0895

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0852

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0333

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a031e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a076b

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0749

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a029f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a055c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0581

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0154

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00b0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/Password;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f0a098e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/Password;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12050d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/security/Password$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/security/Password$2;-><init>(Lcom/samsung/android/settings/security/Password;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v3, 0x42

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/security/Password;->onPasswordConfirm()V

    return v2

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    return-void

    :sswitch_0
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/Password;->keyPressed(I)V

    return-void

    :sswitch_1
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/Password;->keyPressed(I)V

    return-void

    :sswitch_2
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/Password;->keyPressed(I)V

    return-void

    :sswitch_3
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/Password;->keyPressed(I)V

    return-void

    :sswitch_4
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/Password;->keyPressed(I)V

    return-void

    :sswitch_5
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/Password;->keyPressed(I)V

    return-void

    :sswitch_6
    invoke-direct {p0}, Lcom/samsung/android/settings/security/Password;->onPasswordConfirm()V

    return-void

    :sswitch_7
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/Password;->keyPressed(I)V

    return-void

    :sswitch_8
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/Password;->keyPressed(I)V

    return-void

    :sswitch_9
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/Password;->keyPressed(I)V

    return-void

    :sswitch_a
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/Password;->keyPressed(I)V

    return-void

    :sswitch_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/Password;->finish()V

    return-void

    :sswitch_c
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/Password;->keyPressed(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00b0 -> :sswitch_c
        0x7f0a0154 -> :sswitch_b
        0x7f0a029f -> :sswitch_a
        0x7f0a031e -> :sswitch_9
        0x7f0a0333 -> :sswitch_8
        0x7f0a055c -> :sswitch_7
        0x7f0a0581 -> :sswitch_6
        0x7f0a0588 -> :sswitch_5
        0x7f0a0749 -> :sswitch_4
        0x7f0a076b -> :sswitch_3
        0x7f0a0852 -> :sswitch_2
        0x7f0a0895 -> :sswitch_1
        0x7f0a098e -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/Password;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0172

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/Password;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/Password;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ".title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/security/Password;->mTitle:Ljava/lang/String;

    const-string v1, ".subject"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/security/Password;->mSubject:Ljava/lang/String;

    const-string v1, ".password"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/security/Password;->mPassword:Ljava/lang/String;

    const-string v1, "FromOtherSecurity"

    const-string v2, ".from"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/security/Password;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/Password;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const v1, 0x7f0a036a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/security/Password;->mHeadrText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/security/Password;->mHeadrText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/security/Password;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a05c8

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    new-instance v2, Lcom/samsung/android/settings/security/Password$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/security/Password$1;-><init>(Lcom/samsung/android/settings/security/Password;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    const v1, 0x7f0a0588

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/security/Password;->setupKeypad()V

    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f0a00b0

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/security/Password;->mDigits:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/Password;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
