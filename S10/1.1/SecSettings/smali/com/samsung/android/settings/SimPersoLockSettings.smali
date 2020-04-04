.class public Lcom/samsung/android/settings/SimPersoLockSettings;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "SimPersoLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/SimPersoLockSettings$LockState;
    }
.end annotation


# static fields
.field private static final MAX_PASSWD:I

.field private static mNum_Retry:I


# instance fields
.field private final MSG_SHOW_SOFTINPUT:I

.field private mCancelButton:Landroid/widget/Button;

.field protected mH:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLockState:Lcom/samsung/android/settings/SimPersoLockSettings$LockState;

.field private mNewPasswd:Ljava/lang/String;

.field private mNextButton:Landroid/widget/Button;

.field private mOldPasswd:Ljava/lang/String;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field private mRes:Landroid/content/res/Resources;

.field private mToState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigUsimPersonalLockPwdLength"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/SimPersoLockSettings;->mNum_Retry:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/samsung/android/settings/SimPersoLockSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SimPersoLockSettings$1;-><init>(Lcom/samsung/android/settings/SimPersoLockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->MSG_SHOW_SOFTINPUT:I

    new-instance v0, Lcom/samsung/android/settings/SimPersoLockSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SimPersoLockSettings$2;-><init>(Lcom/samsung/android/settings/SimPersoLockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mH:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/SimPersoLockSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SimPersoLockSettings$3;-><init>(Lcom/samsung/android/settings/SimPersoLockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/SimPersoLockSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/SimPersoLockSettings;->simLockChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/SimPersoLockSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/SimPersoLockSettings;->simLockPasswdChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/SimPersoLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SimPersoLockSettings;->showSoftInput()V

    return-void
.end method

.method private showSoftInput()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SimPersoLockSettings"

    const-string v2, "[PPCLP] showSoftInput returned true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "SimPersoLockSettings"

    const-string v2, "[PPCLP] showSoftInput returned false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mH:Landroid/os/Handler;

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private simLockChanged(Z)V
    .locals 3

    const-string v0, "SimPersoLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simLockChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sput v0, Lcom/samsung/android/settings/SimPersoLockSettings;->mNum_Retry:I

    iget-boolean v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mToState:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f121830

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f121832

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SimPersoLockSettings;->finish()V

    goto :goto_2

    :cond_1
    sget v1, Lcom/samsung/android/settings/SimPersoLockSettings;->mNum_Retry:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/android/settings/SimPersoLockSettings;->mNum_Retry:I

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/samsung/android/settings/SimPersoLockSettings;->mNum_Retry:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    const v1, 0x7f120ca7

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f120ca3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f121824

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/SimPersoLockSettings;->finish()V

    :goto_2
    return-void
.end method

.method private simLockPasswdChanged(Z)V
    .locals 3

    const-string v0, "SimPersoLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simLockPasswdChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_2

    sget v1, Lcom/samsung/android/settings/SimPersoLockSettings;->mNum_Retry:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/android/settings/SimPersoLockSettings;->mNum_Retry:I

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/samsung/android/settings/SimPersoLockSettings;->mNum_Retry:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const v1, 0x7f120ca7

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f120ca3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f121824

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SimPersoLockSettings;->finish()V

    goto :goto_1

    :cond_2
    sput v0, Lcom/samsung/android/settings/SimPersoLockSettings;->mNum_Retry:I

    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f12182f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SimPersoLockSettings;->finish()V

    :goto_1
    return-void
.end method

.method private tryChangeSimLockPasswd()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/SimPersoLockSettings;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mOldPasswd:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mNewPasswd:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccSimPersoPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private updateViews()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/SimPersoLockSettings$4;->$SwitchMap$com$samsung$android$settings$SimPersoLockSettings$LockState:[I

    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mLockState:Lcom/samsung/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v1}, Lcom/samsung/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x8

    packed-switch v0, :pswitch_data_0

    const-string v0, "SimPersoLockSettings"

    const-string v1, "Exception: unexpected state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/samsung/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f12182a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f120ca6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :pswitch_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mToState:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f120c9d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_2
    sget v0, Lcom/samsung/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f121851

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f12180a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f120c9b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_5
    sget v0, Lcom/samsung/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f121850

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f121803

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-nez v0, :cond_8

    sget v0, Lcom/samsung/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v1, :cond_7

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f121829

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f120ca5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :pswitch_3
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-nez v0, :cond_a

    sget v0, Lcom/samsung/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v1, :cond_9

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f121828

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f120ca4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getProgressDialog()Landroid/app/Dialog;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f121827

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/SimPersoLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/settings/SimPersoLockSettings;->mNum_Retry:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    const v0, 0x7f120ca7

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/SimPersoLockSettings;->finish()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/SimPersoLockSettings;->onClickConfirm()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onClickConfirm()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const v3, 0x7f12182b

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const/4 v3, 0x4

    if-lt v1, v3, :cond_4

    sget v3, Lcom/samsung/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-le v1, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    sget-object v3, Lcom/samsung/android/settings/SimPersoLockSettings$4;->$SwitchMap$com$samsung$android$settings$SimPersoLockSettings$LockState:[I

    iget-object v4, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mLockState:Lcom/samsung/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v4}, Lcom/samsung/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    const-string v2, "SimPersoLockSettings"

    const-string v3, "Exception: unexpected click"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected click event"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mOldPasswd:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/SimPersoLockSettings$LockState;->LOCK_NEW:Lcom/samsung/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/SimPersoLockSettings;->updateStage(Lcom/samsung/android/settings/SimPersoLockSettings$LockState;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/SimPersoLockSettings;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    iget-object v2, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mToState:Z

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/internal/telephony/IccCard;->setIccSimPersoEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mNewPasswd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/SimPersoLockSettings;->tryChangeSimLockPasswd()V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f120ca8

    invoke-static {p0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const v4, 0x7f12182e

    invoke-static {p0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    sget-object v2, Lcom/samsung/android/settings/SimPersoLockSettings$LockState;->LOCK_NEW:Lcom/samsung/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/SimPersoLockSettings;->updateStage(Lcom/samsung/android/settings/SimPersoLockSettings$LockState;)V

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mNewPasswd:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/SimPersoLockSettings$LockState;->LOCK_REENTER:Lcom/samsung/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/SimPersoLockSettings;->updateStage(Lcom/samsung/android/settings/SimPersoLockSettings$LockState;)V

    nop

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v3

    if-nez v3, :cond_6

    sget v3, Lcom/samsung/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    goto :goto_3

    :cond_5
    const v3, 0x7f121833

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_6
    :goto_3
    const v3, 0x7f120ca9

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SimPersoLockSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccUsimPersoEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mToState:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/SimPersoLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/SimPersoLockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SimPersoLockSettings;->setupViews()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SimPersoLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "checkbox"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SimPersoLockSettings"

    const-string v2, "Change USIM lock state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const v1, 0x7f121831

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    sget-object v1, Lcom/samsung/android/settings/SimPersoLockSettings$LockState;->LOCK_CONFIRM:Lcom/samsung/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/SimPersoLockSettings;->updateStage(Lcom/samsung/android/settings/SimPersoLockSettings$LockState;)V

    goto :goto_0

    :cond_1
    const-string v1, "SimPersoLockSettings"

    const-string v2, "Change USIM lock password"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    const v1, 0x7f121825

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_2
    sget-object v1, Lcom/samsung/android/settings/SimPersoLockSettings$LockState;->LOCK_CONFIRM_AND_CHANGE:Lcom/samsung/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/SimPersoLockSettings;->updateStage(Lcom/samsung/android/settings/SimPersoLockSettings$LockState;)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/SimPersoLockSettings;->updateViews()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    if-eqz p2, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SimPersoLockSettings;->onClick(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SimPersoLockSettings;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SimPersoLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/samsung/android/settings/SimPersoLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mH:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected setupViews()V
    .locals 6

    const v0, 0x7f0d0267

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SimPersoLockSettings;->setContentView(I)V

    const v0, 0x7f0a0158

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mCancelButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a053d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mNextButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SimPersoLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_button_background"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mCancelButton:Landroid/widget/Button;

    const v4, 0x7f0804d2

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    const v3, 0x7f0a05be

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v4, 0x2000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setImportantForAutofill(I)V

    const v3, 0x7f0a036e

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    sget v5, Lcom/samsung/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v1, v2

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public updateStage(Lcom/samsung/android/settings/SimPersoLockSettings$LockState;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mLockState:Lcom/samsung/android/settings/SimPersoLockSettings$LockState;

    const-string v0, "SimPersoLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/SimPersoLockSettings;->mLockState:Lcom/samsung/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/SimPersoLockSettings;->updateViews()V

    return-void
.end method
