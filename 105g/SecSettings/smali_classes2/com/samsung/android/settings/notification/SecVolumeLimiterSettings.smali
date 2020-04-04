.class public Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecVolumeLimiterSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/samsung/android/settings/search/SecIndexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;,
        Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecBaseSearchIndexProvider;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFirstPin:Ljava/lang/String;

.field private mHeaderText:Landroid/widget/TextView;

.field private mMaximumVolume:Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field mUiStage:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

.field private mUsePassword:Landroid/support/v14/preference/SwitchPreference;

.field private offMstarState:Z

.field private offShowPW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$7;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$7;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecBaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    const/16 v0, 0x10

    iput v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mPasswordMaxLength:I

    sget-object v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->offShowPW:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->offShowPW:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mPasswordMaxLength:I

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->offMstarState:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->offMstarState:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->setVolumeLimiter(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->updateUi()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mUsePassword:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    return-object p1
.end method

.method private setNextEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private setNextText(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method private setVolumeLimiter(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_limiter_value"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volumelimit_on"

    nop

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audioParam;volumelimit_on="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audioParam;volumelimit_value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->setEnabled(Z)V

    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->updateStage(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;)V

    return-void
.end method

.method private updateUi()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    sget-object v3, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_3

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    const v3, 0x7f120dc7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->setNextEnabled(Z)V

    goto :goto_2

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mPasswordMaxLength:I

    if-ge v3, v4, :cond_2

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->setNextEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    const v5, 0x7f120dc8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->setNextEnabled(Z)V

    :cond_2
    :goto_0
    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    iget v3, v3, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->numericHint:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    if-lez v1, :cond_4

    goto :goto_1

    :cond_4
    move v4, v5

    :goto_1
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->setNextEnabled(Z)V

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    iget v2, v2, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->buttonText:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->setNextText(I)V

    return-void
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    const v0, 0x7f120dc7

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mPasswordMaxLength:I

    if-lt v0, v3, :cond_1

    const v0, 0x7f120dc6

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mPasswordMaxLength:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1014

    return v0
.end method

.method public handleNext()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    sget-object v4, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    if-ne v3, v4, :cond_4

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mPasswordMaxLength:I

    if-ne v1, v3, :cond_7

    :cond_3
    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mFirstPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->NeedToConfirm:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->updateStage(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    sget-object v4, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->NeedToConfirm:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "volumelimit_secure_password"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "volumelimit_set_password"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_6

    move-object v4, v3

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v1, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_6
    sget-object v1, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->ConfirmWrong:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->updateStage(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;)V

    :cond_7
    :goto_0
    if-eqz v2, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->showError(Ljava/lang/String;Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;)V

    :cond_8
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volumelimit_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volumelimit_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->setVolumeLimiter(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    if-eqz p1, :cond_3

    const-string v1, "notificationDialogShown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volumelimit_set_password"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->DisplayCheckUI()V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->showSetPasswordDialog()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mAudioManager:Landroid/media/AudioManager;

    const v0, 0x7f150105

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->addPreferencesFromResource(I)V

    const-string v0, "maximum_volume"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;

    new-instance v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;-><init>(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$1;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->setCallback(Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference$Callback;)V

    const-string v1, "use_password"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mUsePassword:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mUsePassword:Landroid/support/v14/preference/SwitchPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$1;-><init>(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volumelimit_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mUsePassword:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "volumelimit_set_password"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->releaseMediaPlayer()V

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volumelimit_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mUsePassword:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "volumelimit_set_password"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->prepareMediaPlayer()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "notificationDialogShown"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->onActivityStop()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1015

    invoke-static {v0, v1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volumelimit_set_password"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->offMstarState:Z

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->DisplayCheckUI()V

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->setVolumeLimiter(Z)V

    return-void
.end method

.method public showSetPasswordDialog()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d014c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$2;-><init>(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a053b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    new-instance v3, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$3;-><init>(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundUtils;->isEnabledShowBtnBg(Landroid/content/Context;)Z

    move-result v2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    const v3, 0x7f08026e

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    const v3, 0x7f0a05bc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v4, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$4;-><init>(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v4, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$5;-><init>(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    iget v7, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mPasswordMaxLength:I

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    const v3, 0x7f0a0370

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    sget-object v3, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->updateStage(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f12154a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$6;-><init>(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method protected updateStage(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->updateUi()V

    return-void
.end method
