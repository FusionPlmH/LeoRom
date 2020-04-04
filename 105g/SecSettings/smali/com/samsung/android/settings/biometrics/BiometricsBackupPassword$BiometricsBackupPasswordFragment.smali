.class public Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;
.super Landroid/app/Fragment;
.source "BiometricsBackupPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$onKeyBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BiometricsBackupPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;
    }
.end annotation


# static fields
.field private static MIN_PASSWORD_LENGTH:I

.field private static THRESHOLD_OF_SEQUENTIAL_CHAR:I


# instance fields
.field private MaxLengthFilter:Landroid/text/InputFilter;

.field private isExistRequestedPWQ:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mCheckSimplePassword:Z

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsConfirmingSamsungAccount:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mRequestedQuality:I

.field private mSavedPassword:Ljava/lang/String;

.field private mUiStage:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

.field private rotateState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->getShortPasswordLength()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->MIN_PASSWORD_LENGTH:I

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->getShortPasswordLength()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->getShortPasswordLength()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLength:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMaxLength:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLetters:I

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinUpperCase:I

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLowerCase:I

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinSymbols:I

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinNumeric:I

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->getPasswordQuality()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mRequestedQuality:I

    sget-object v1, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;->Introduction:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mUiStage:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mIsConfirmingSamsungAccount:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mCheckSimplePassword:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mSavedPassword:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->isExistRequestedPWQ:Z

    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$1;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$2;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->MaxLengthFilter:Landroid/text/InputFilter;

    return-void
.end method

.method private DisableSystemKey()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->requestSystemKeyEvent(IZ)Z

    const/16 v1, 0xbb

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->requestSystemKeyEvent(IZ)Z

    return-void
.end method

.method private EnableSystemKey()V
    .locals 3

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->isSystemKeyEventRequested(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->requestSystemKeyEvent(IZ)Z

    :cond_0
    const/16 v0, 0xbb

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->requestSystemKeyEvent(IZ)Z

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMaxLength:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private checkRepeatingChars(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v4, v0

    move v0, v3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v1, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    const-string v2, "BiometricsBackupPasswordFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "has internal loop password : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    :cond_3
    return v2
.end method

.method private checkSequentialChars(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "0123456789"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-gt v2, v0, :cond_2

    const-string v4, "0123456789"

    sget v5, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    add-int/2addr v5, v2

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "9876543210"

    sget v6, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    add-int/2addr v6, v2

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "BiometricsBackupPasswordFragment"

    const-string v6, "has Sequential password"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const-string v2, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sget v4, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    sub-int/2addr v2, v4

    move v0, v1

    :goto_2
    if-gt v0, v2, :cond_5

    const-string v4, "abcdefghijklmnopqrstuvwxyz"

    sget v5, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    add-int/2addr v5, v0

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "zyxwvutsrqponmlkjihgfedcba"

    sget v6, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    add-int/2addr v6, v0

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    const-string v1, "BiometricsBackupPasswordFragment"

    const-string v6, "has Sequential password"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    return v1
.end method

.method private confirmSamsungAccount()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getBiometricsBackupTypeDB(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BiometricsBackupPasswordFragment"

    const-string v2, "confirmSamsungAccount : call samsungaccount"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mIsConfirmingSamsungAccount:Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "client_id"

    const-string v3, "s5d189ajvs"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "client_secret"

    const-string v3, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Is_From_SA_Verify"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private getScreenOrientation()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private handleNext()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mUiStage:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    sget-object v5, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;->Introduction:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    if-ne v4, v5, :cond_2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mFirstPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;->NeedToConfirm:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->updateStage(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;)V

    goto/16 :goto_1

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mUiStage:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    sget-object v5, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;->NeedToConfirm:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v4, v2, v1, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPassword(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "biometrics_backup_type"

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    const-string v4, "BiometricsBackupPasswordFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Biometrics backup type DB setup result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "changepassword"

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->access$500()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f1209cb

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;->ConfirmWrong:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->updateStage(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;)V

    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v1, v5, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mUiStage:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->showError(Ljava/lang/String;Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;)V

    :cond_6
    return-void
.end method

.method private isSystemKeyEventRequested(I)Z
    .locals 5

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "BiometricsBackupPasswordFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSystemKeyEventRequested - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 5

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "BiometricsBackupPasswordFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSystemKeyEvent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private showError(Ljava/lang/String;Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateUi()V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BiometricsBackupPasswordFragment"

    const-string v1, "Fragment was detached. UpdateUi is cancelled."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mUiStage:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    sget-object v3, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;->Introduction:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const v3, 0x7f120d80

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const v3, 0x7f120a42

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mUiStage:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    sget-object v3, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;->Introduction:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    const v4, 0x7f120a3b

    const v5, 0x7f1209d3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v3, :cond_5

    if-lez v1, :cond_5

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLength:I

    if-ge v1, v2, :cond_3

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLength:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v5, v2}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->isExistRequestedPWQ:Z

    if-nez v3, :cond_2

    new-array v3, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v4, 0x7f120dc8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mUiStage:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    sget-object v3, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;->Introduction:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->isExistRequestedPWQ:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    new-array v3, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v5, v3}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->isExistRequestedPWQ:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mUiStage:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    iget v3, v3, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;->betaHint:I

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mUiStage:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    iget v3, v3, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;->alphaHint:I

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mNextButton:Landroid/widget/Button;

    if-lez v1, :cond_9

    goto :goto_3

    :cond_9
    move v6, v7

    :goto_3
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_4
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mUiStage:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    iget v3, v3, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mCheckSimplePassword:Z

    if-eqz v2, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f120dbc

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f120db8

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLength:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_2

    const v2, 0x7f120dbf

    new-array v3, v5, [Ljava/lang/Object;

    iget v5, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMaxLength:I

    if-le v2, v3, :cond_3

    const v2, 0x7f120dbe

    new-array v3, v5, [Ljava/lang/Object;

    iget v5, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMaxLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v3

    move v3, v2

    move v2, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v2, v11, :cond_9

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    if-lt v11, v12, :cond_8

    const/16 v12, 0x7f

    if-le v11, v12, :cond_4

    goto :goto_2

    :cond_4
    const/16 v12, 0x30

    if-lt v11, v12, :cond_5

    const/16 v12, 0x39

    if-gt v11, v12, :cond_5

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    const/16 v12, 0x41

    if-lt v11, v12, :cond_6

    const/16 v12, 0x5a

    if-gt v11, v12, :cond_6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    const/16 v12, 0x61

    if-lt v11, v12, :cond_7

    const/16 v12, 0x7a

    if-gt v11, v12, :cond_7

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v10, v10, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    const v4, 0x7f120db0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_9
    const/high16 v2, 0x20000

    iget v11, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mRequestedQuality:I

    if-ne v2, v11, :cond_b

    if-gtz v3, :cond_a

    if-lez v8, :cond_b

    :cond_a
    const v2, 0x7f120dc2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_b
    const/high16 v2, 0x60000

    iget v11, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mRequestedQuality:I

    if-ne v2, v11, :cond_11

    iget v2, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLetters:I

    if-ge v3, v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x7f100025

    iget v12, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v2, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/Object;

    iget v11, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLetters:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_c
    iget v2, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinNumeric:I

    if-ge v6, v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x7f100028

    iget v12, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v2, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/Object;

    iget v11, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinNumeric:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_d
    iget v2, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v7, v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x7f100026

    iget v12, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v2, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/Object;

    iget v11, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLowerCase:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_e
    iget v2, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v9, v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x7f10002a

    iget v12, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v2, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/Object;

    iget v11, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinUpperCase:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_f
    iget v2, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinSymbols:I

    if-ge v8, v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x7f100029

    iget v12, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v2, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/Object;

    iget v11, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinSymbols:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_10
    iget v2, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v10, v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x7f100027

    iget v12, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v2, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/Object;

    iget v11, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_11
    const/high16 v2, 0x40000

    iget v11, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mRequestedQuality:I

    if-ne v2, v11, :cond_12

    move v2, v5

    goto :goto_3

    :cond_12
    move v2, v4

    :goto_3
    const/high16 v11, 0x50000

    iget v12, v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mRequestedQuality:I

    if-ne v11, v12, :cond_13

    move v11, v5

    goto :goto_4

    :cond_13
    move v11, v4

    :goto_4
    if-nez v2, :cond_14

    if-eqz v11, :cond_15

    :cond_14
    if-nez v3, :cond_15

    const v4, 0x7f120db9

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_15
    if-eqz v11, :cond_16

    if-nez v6, :cond_16

    const v4, 0x7f120dba

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_16
    const/4 v2, 0x0

    const-string/jumbo v11, "true"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v14, "getForbiddenStrings"

    invoke-static {v12, v13, v14, v11}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    new-array v13, v5, [Ljava/lang/String;

    aput-object v1, v13, v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v5, "hasForbiddenNumericSequence"

    invoke-static {v14, v15, v5, v13}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v4, "getMaximumNumericSequenceLength"

    move/from16 v18, v3

    const/4 v3, 0x0

    invoke-static {v14, v15, v4, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v3, "hasForbiddenCharacterSequence"

    invoke-static {v14, v15, v3, v13}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "content://com.sec.knox.provider/PasswordPolicy1"

    move/from16 v19, v6

    const-string v6, "getMaximumCharacterSequenceLength"

    move/from16 v20, v7

    const/4 v7, 0x0

    invoke-static {v14, v15, v6, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v1, v7, v14

    const/4 v14, 0x1

    aput-object v2, v7, v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v1, "hasForbiddenStringDistance"

    invoke-static {v14, v15, v1, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "content://com.sec.knox.provider/PasswordPolicy1"

    move-object/from16 v21, v2

    const-string v2, "getMinimumCharacterChangeLength"

    move-object/from16 v22, v7

    const/4 v7, 0x0

    invoke-static {v14, v15, v2, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v14, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v15, "hasForbiddenData"

    invoke-static {v7, v14, v15, v13}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "content://com.sec.knox.provider/PasswordPolicy1"

    move/from16 v23, v8

    const-string v8, "hasMaxRepeatedCharacters"

    invoke-static {v14, v15, v8, v13}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "content://com.sec.knox.provider/PasswordPolicy1"

    move/from16 v24, v9

    const-string v9, "getMaximumCharacterOccurences"

    move/from16 v25, v10

    const/4 v10, 0x0

    invoke-static {v14, v15, v9, v10}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v14, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v15, "isPasswordPatternMatched"

    invoke-static {v10, v14, v15, v13}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-nez v4, :cond_17

    const/4 v14, -0x1

    if-ne v12, v14, :cond_17

    if-nez v9, :cond_17

    if-nez v6, :cond_17

    if-eqz v2, :cond_1d

    :cond_17
    const/4 v14, 0x1

    if-ne v5, v14, :cond_18

    new-array v14, v14, [Ljava/lang/Object;

    add-int/lit8 v15, v4, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const v15, 0x7f1210ad

    invoke-virtual {v0, v15, v14}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    return-object v14

    :cond_18
    const/16 v16, 0x0

    if-ne v3, v14, :cond_19

    new-array v14, v14, [Ljava/lang/Object;

    add-int/lit8 v15, v6, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v16

    const v15, 0x7f1210ac

    invoke-virtual {v0, v15, v14}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    return-object v14

    :cond_19
    if-ne v1, v14, :cond_1a

    const v15, 0x7f120e91

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v14, v16

    invoke-virtual {v0, v15, v14}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    return-object v14

    :cond_1a
    if-ne v7, v14, :cond_1b

    const v14, 0x7f1210ab

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    return-object v14

    :cond_1b
    if-ne v8, v14, :cond_1c

    const v15, 0x7f120e4c

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v14, v17

    invoke-virtual {v0, v15, v14}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    return-object v14

    :cond_1c
    if-nez v10, :cond_1d

    const v14, 0x7f120db6

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    return-object v14

    :cond_1d
    const/4 v14, 0x0

    return-object v14
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mUiStage:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    sget-object v1, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;->ConfirmWrong:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;->NeedToConfirm:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mUiStage:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->updateUi()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "BiometricsBackupPasswordFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mIsConfirmingSamsungAccount:Z

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->setOnKeyBackListener(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$onKeyBackListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a015a

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a053b

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->handleNext()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mUiStage:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    sget-object v1, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;->Introduction:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;->Introduction:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->updateStage(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->access$500()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "BiometricsBackupPasswordFragment"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mSavedPassword:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mSavedPassword:Ljava/lang/String;

    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->rotateState:I

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getScreenOrientation()I

    move-result v2

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->isScreenRotated:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getScreenOrientation()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->rotateState:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "BiometricsBackupPasswordFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->setRetainInstance(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->semIsSimplePasswordEnabled(Landroid/content/ComponentName;)Z

    move-result v2

    xor-int/2addr v2, v1

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mCheckSimplePassword:Z

    :cond_0
    const-string v2, "BiometricsBackupPasswordFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckSimplePassword = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mCheckSimplePassword:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getScreenOrientation()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->rotateState:I

    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->isScreenRotated:Z

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v4

    if-lez v4, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->isExistRequestedPWQ:Z

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->isExistRequestedPWQ:Z

    const-string v1, "BiometricsBackupPasswordFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExistRequestedPWQ = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->isExistRequestedPWQ:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->isExistRequestedPWQ:Z

    const/4 v4, 0x4

    if-nez v1, :cond_2

    sput v4, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->MIN_PASSWORD_LENGTH:I

    iput v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLength:I

    sput v4, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    iput v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mRequestedQuality:I

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->access$300()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v5, "device_policy"

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->access$302(Landroid/app/admin/DevicePolicyManager;)Landroid/app/admin/DevicePolicyManager;

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->access$300()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mRequestedQuality:I

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mRequestedQuality:I

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->access$300()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLength:I

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLength:I

    sget v5, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->MIN_PASSWORD_LENGTH:I

    if-ge v1, v5, :cond_4

    sget v1, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->MIN_PASSWORD_LENGTH:I

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLength:I

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->access$300()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v1

    const v3, 0x61000

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    if-ne v1, v3, :cond_7

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mRequestedQuality:I

    if-gez v1, :cond_5

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mRequestedQuality:I

    :goto_0
    iput v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mRequestedQuality:I

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLength:I

    if-ge v1, v4, :cond_6

    goto :goto_1

    :cond_6
    iget v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLength:I

    :goto_1
    iput v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLength:I

    :cond_7
    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLength:I

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLength:I

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->access$300()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMaxLength:I

    const-string v1, "lockscreen.password_min_letters"

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLetters:I

    const-string v1, "lockscreen.password_min_uppercase"

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinUpperCase:I

    const-string v1, "lockscreen.password_min_lowercase"

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinLowerCase:I

    const-string v1, "lockscreen.password_min_numeric"

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinNumeric:I

    const-string v1, "lockscreen.password_min_symbols"

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinSymbols:I

    const-string v1, "lockscreen.password_min_nonletter"

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    goto :goto_2

    :cond_8
    const-string v1, "BiometricsBackupPasswordFragment"

    const-string v2, "mDPM is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->confirmSamsungAccount()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const-string v0, "BiometricsBackupPasswordFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    const/4 v0, 0x0

    const v1, 0x7f0d012d

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIris()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f0a05bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    const v3, 0x7f120a41

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const v2, 0x7f0a015a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a053b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_button_background"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const v5, 0x7f0804de

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_3

    instance-of v4, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v3, v4, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_3
    const v4, 0x7f0a05bc

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/text/InputFilter;

    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->MaxLengthFilter:Landroid/text/InputFilter;

    aput-object v6, v5, v0

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    iget v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordMaxLength:I

    invoke-direct {v0, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v0, v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v3, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$3;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    const/high16 v3, 0x2000000

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0a0370

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getInputType()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setInputType(I)V

    instance-of v4, v0, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_6

    move-object v4, v0

    check-cast v4, Landroid/preference/PreferenceActivity;

    const/4 v5, 0x0

    const-string v6, "changepassword"

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->access$500()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const v5, 0x7f1209cc

    goto :goto_2

    :cond_5
    const v5, 0x7f1209bb

    :goto_2
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6, v6}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v5, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$4;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mSavedPassword:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mUiStage:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mUiStage:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->updateStage(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;)V

    :cond_8
    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

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
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->handleNext()V

    const/4 v0, 0x1

    return v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x17

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->handleNext()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyBack()Z
    .locals 3

    const-string v0, "BiometricsBackupPasswordFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnKeyPressed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mUiStage:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    invoke-virtual {v2}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mUiStage:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    sget-object v1, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;->Introduction:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;->Introduction:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mUiStage:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->updateUi()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "BiometricsBackupPasswordFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->isScreenRotated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-boolean v1, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->isScreenRotated:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mIsConfirmingSamsungAccount:Z

    if-eqz v0, :cond_1

    const-string v0, "BiometricsBackupPasswordFragment"

    const-string v2, "onPause : mIsConfirmingSamsungAccount"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->EnableSystemKey()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const-string v0, "BiometricsBackupPasswordFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mUiStage:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->updateStage(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;)V

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->access$500()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "changepassword"

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->DisableSystemKey()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected updateStage(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mUiStage:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mUiStage:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->updateUi()V

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
