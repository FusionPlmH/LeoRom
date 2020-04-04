.class public Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;
.super Landroid/app/Activity;
.source "UserDictionaryAddWordActivity.java"


# instance fields
.field private mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

.field private mEditText:Landroid/widget/EditText;

.field private mErrorTextView:Landroid/widget/TextView;

.field private mMaxLength:I

.field private mResetTextAction:Z

.field private mTempWord:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mResetTextAction:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mResetTextAction:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mResetTextAction:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mMaxLength:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mErrorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mTempWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mTempWord:Ljava/lang/String;

    return-object p1
.end method

.method private reportBackToCaller(ILandroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "listener"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/os/Messenger;

    if-nez v2, :cond_1

    return-void

    :cond_1
    move-object v2, v1

    check-cast v2, Landroid/os/Messenger;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    iput-object p2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p1, v3, Landroid/os/Message;->what:I

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :goto_0
    return-void
.end method


# virtual methods
.method public onClickCancel(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->reportBackToCaller(ILandroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->finish()V

    return-void
.end method

.method public onClickConfirm(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->apply(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->reportBackToCaller(ILandroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d03c7

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0330

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mMaxLength:I

    const v0, 0x7f0a02d8

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mErrorTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mErrorTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a08ce

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity$1;-><init>(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.USER_DICTIONARY_EDIT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    goto :goto_1

    :cond_0
    const-string v2, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :goto_1
    nop

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v3, v4

    :cond_1
    const-string v4, "mode"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_2

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_2
    new-instance v4, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->finish()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0, p1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->saveStateIntoBundle(Landroid/os/Bundle;)V

    return-void
.end method
