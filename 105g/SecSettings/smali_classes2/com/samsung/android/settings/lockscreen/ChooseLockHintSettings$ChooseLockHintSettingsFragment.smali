.class public Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "ChooseLockHintSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockHintSettingsFragment"
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mConfiguredHintText:Ljava/lang/String;

.field private mCurrentPW:Ljava/lang/String;

.field private mErrorHintTextView:Landroid/widget/TextView;

.field private mErrorState:Z

.field private mHeaderText:Landroid/widget/TextView;

.field private mHintEditText:Landroid/widget/EditText;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorState:Z

    return-void
.end method

.method private comparePasswordAndHint(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mCurrentPW:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mCurrentPW:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorState:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->resetInputStateAndUpdateDesc()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mUserId:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->startSaveHintAndFinish(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private getConfiguredPasswordType()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    const-string v1, ""

    const/high16 v2, 0x10000

    if-eq v0, v2, :cond_2

    const/high16 v2, 0x20000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x30000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x40000

    if-eq v0, v2, :cond_0

    const/high16 v2, 0x50000

    if-eq v0, v2, :cond_0

    const/high16 v2, 0x60000

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121b1b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121b1f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121b1d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    :goto_0
    return-object v1
.end method

.method private initializeHintValue()V
    .locals 3

    const-string v0, "ChooseLockHintSettings"

    const-string v1, "Initialize Hint value"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPasswordHint(Ljava/lang/String;I)V

    return-void
.end method

.method private resetInputStateAndUpdateDesc()V
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorState:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->getConfiguredPasswordType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1204c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorHintTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorHintTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorHintTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060103

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mScrollView:Landroid/widget/ScrollView;

    const/16 v5, 0x82

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->fullScroll(I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorHintTextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private startSaveHintAndFinish(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "ChooseLockHintSettings"

    const-string v1, "startSaveHintAndFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1c

    const/16 v1, 0x2334

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setPasswordHint(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorState:Z

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public handleNext()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mConfiguredHintText:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mConfiguredHintText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mConfiguredHintText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->comparePasswordAndHint(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a015a

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a053b

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->handleNext()V

    goto :goto_0

    :cond_1
    const-string v0, "ChooseLockHintSettings"

    const-string v1, "Not save HintText"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1c

    const/16 v1, 0x2334

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mUserId:I

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->initializeHintValue()V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Fragment contained in wrong activity"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d014b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
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
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->handleNext()V

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->resetInputStateAndUpdateDesc()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "error_state"

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "secret_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mCurrentPW:Ljava/lang/String;

    const v0, 0x7f0a03a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mScrollView:Landroid/widget/ScrollView;

    const v0, 0x7f0a036f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->getConfiguredPasswordType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x7f1204c0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1204bf

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a015a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06013d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const v1, 0x7f0a053b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mNextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    const v1, 0x7f0a02d5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorHintTextView:Landroid/widget/TextView;

    const v1, 0x7f0a029f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    if-eqz p2, :cond_0

    const-string v1, "error_state"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorState:Z

    :cond_0
    return-void
.end method
