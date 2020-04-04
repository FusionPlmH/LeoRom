.class public Lcom/android/settings/fingerprint/FingerprintSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/logging/status/StatusLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;
    }
.end annotation


# static fields
.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field private static mIsKeepEnrollSession:Z

.field private static mIsPreferenceClicked:Z


# instance fields
.field private isRunRegister:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mAdaptiveIcon:Landroid/support/v14/preference/SwitchPreference;

.field private mAddFingerprint:Landroid/support/v7/preference/PreferenceScreen;

.field private mAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

.field private final mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private mEnrolledFingerCount:I

.field private mFastRecognition:Landroid/support/v14/preference/SwitchPreference;

.field private mFingerprintCancel:Landroid/os/CancellationSignal;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field final mH:Landroid/os/Handler;

.field private final mHandler:Landroid/os/Handler;

.field private mIdentifyFingerprint:Z

.field private mIsAfw:Z

.field mIsAuth:Z

.field private mIsInMultiWindowMode:Z

.field private mIsKnox:Z

.field private mIsRelativeLink:Z

.field private mIsSearchEntry:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedFmmPopup:Z

.field private mOptionsMenu:Landroid/view/Menu;

.field mPrompt:Landroid/hardware/biometrics/BiometricPrompt;

.field mPromptBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

.field private mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

.field private mSamsungAccountContext:Landroid/content/Context;

.field private mScreenLock:Landroid/support/v14/preference/SwitchPreference;

.field private mScreenState:I

.field private mToken:[B

.field private mUserId:I

.field private mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

.field private through_onpreferencechange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsPreferenceClicked:Z

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$6;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$6;-><init>()V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mH:Landroid/os/Handler;

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsKnox:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsRelativeLink:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsSearchEntry:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mNeedFmmPopup:Z

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$2;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->stopFingerprint()V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsPreferenceClicked:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerprintSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/FingerprintSettings;I[Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings;->startSelectListUI(I[Z)V

    return-void
.end method

.method private addFingerprintItemPreferences()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    move v2, v3

    :goto_0
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v2, v4, :cond_2

    move v4, v2

    :goto_1
    if-lez v4, :cond_1

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    if-le v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    add-int/lit8 v6, v4, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_3

    const-string v2, "FpstFingerprintSettings"

    const-string v4, "addFingerprintItemPreferences : Sort Error"

    invoke-static {v2, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    :cond_3
    const-string v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addFingerprintItemPreferences : mEnrolledFingerCount["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    if-eqz v1, :cond_5

    move v1, v3

    :goto_2
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    const-string v4, "FpstFingerprintSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addFingerprintItemPreferences : fid["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], Name["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "], Gid["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_3
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    invoke-static {v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->genKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    const v5, 0x7f0d019f

    invoke-virtual {v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setLayoutResource(I)V

    invoke-virtual {v4, v3}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setPersistent(Z)V

    const v5, 0x7f080105

    invoke-virtual {v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setIcon(I)V

    invoke-virtual {v4, v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setOrder(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {v4, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    const-string v1, "FpstFingerprintSettings"

    const-string v2, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null 2"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    const-string v1, "FpstFingerprintSettings"

    const-string v2, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null 1"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateAddPreference()V

    return-void
.end method

.method private cancelAndSessionEnd()V
    .locals 2

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "cancelAndSessionEnd() "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->stopFingerprint()V

    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->finishFingerprintSettings()V

    :goto_0
    return-void
.end method

.method private checkMobileKeyboard()Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableFingerprintWithMobileKeyboard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v2, "FpstFingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMobileKeyboard. return : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isAdded() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isAdded()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "FpstFingerprintSettings"

    const-string v2, "createPreferenceHierarchy : remove all"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v1, 0x7f1500c2

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintPreference()V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->addFingerprintItemPreferences()V

    return-object v0
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFingerprintSamsungAccountVerification()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_used_samsungaccount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    const-string v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFingerprintSamsungAccountVerification :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getFingerprintVerification()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "fingerprint_webpass"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    move v0, v1

    const-string v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFingerprintVerification :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    return v1
.end method

.method private getIndexForRegisteration()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method private isSamsungAccountSignedIn(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    const-string v2, "FpstFingerprintSettings"

    const-string v3, "isHaveSA() - true"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    const-string v2, "FpstFingerprintSettings"

    const-string v3, "isHaveSA() - false"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method private registerAuthenticate()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mPromptBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mPromptBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    const v1, 0x7f1209cd

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mPromptBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    const v1, 0x7f120a36

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mPromptBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetBiometricType(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mPromptBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetPrivilegedFlag(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mPromptBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    const v2, 0x7f120475

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$3;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mPromptBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAuth:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "FpstFingerprintSettings"

    const-string v1, "registerAuthenticate : Skip"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private runRegister(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showMobileKeyboardToastMsg()V

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1209de

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isDisableScreenForDisplayFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "fingerIndex"

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getIndexForRegisteration()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "previousStage"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "identifyFingerprint"

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    if-eqz v1, :cond_2

    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    if-eqz v1, :cond_3

    const-string v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runRegister already called : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    const-string v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runRegister called : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-lez v1, :cond_4

    const/16 v1, 0x3e9

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method private setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_samsungaccount_confirmed"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFingerPrintOnSamsungAccountConfirmed:result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private setFingerprintPreference()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "check_added_fingerprints"

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    const-string v4, "key_fingerprint_add"

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAddFingerprint:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceManager;->setStorageDeviceProtected()V

    const-string v4, "fast_recognition"

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFastRecognition:Landroid/support/v14/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFastRecognition:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isDispaySensor()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-eqz v4, :cond_2

    const-string v4, "fast_recognition"

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFastRecognition:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFastRecognition:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->getFingerprintFastRecognition(Landroid/content/Context;I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFastRecognition:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFastRecognition:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    const-string v4, "fast_recognition"

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->removePreference(Ljava/lang/String;)Z

    const-string v4, "inset_faster"

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->removePreference(Ljava/lang/String;)Z

    :cond_5
    :goto_1
    const-string/jumbo v4, "set_screen_lock"

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v4, v2, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricsLockDBValue(Landroid/content/Context;II)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v4, v2, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricsLockDBValue(Landroid/content/Context;II)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/security/SecurityUtils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->getTwoFactorValue(Landroid/content/Context;I)I

    move-result v4

    if-ne v4, v2, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    const-string v4, "FpstFingerprintSettings"

    const-string v5, "setFingerprintPreference : Screen lock switch disable by MDM!"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    goto :goto_3

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "FpstFingerprintSettings"

    const-string v5, "setFingerprintPreference : Screen lock switch disable by Enterprise ID feature"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_b
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120a26

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v4, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_c
    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-eqz v4, :cond_d

    const-string/jumbo v4, "set_screen_lock"

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->removePreference(Ljava/lang/String;)Z

    :cond_d
    const-string v4, "adaptive_icon"

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAdaptiveIcon:Landroid/support/v14/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAdaptiveIcon:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v4, :cond_12

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isDispaySensor()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsKnox:Z

    or-int/2addr v4, v5

    if-eqz v4, :cond_e

    const-string v4, "adaptive_icon"

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_5

    :cond_e
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAdaptiveIcon:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAdaptiveIcon:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->getFingerprintAdaptiveIconValue(Landroid/content/Context;I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_4

    :cond_f
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAdaptiveIcon:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_5

    :cond_10
    :goto_4
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAdaptiveIcon:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_5

    :cond_11
    const-string v4, "adaptive_icon"

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->removePreference(Ljava/lang/String;)Z

    :cond_12
    :goto_5
    const-string/jumbo v4, "set_always_on"

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v4, :cond_18

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isSideSensor()Z

    move-result v4

    if-eqz v4, :cond_17

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-nez v4, :cond_16

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsKnox:Z

    if-eqz v4, :cond_13

    goto :goto_7

    :cond_13
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->getFingerprintAlwaysOnValue(Landroid/content/Context;I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_6

    :cond_14
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_8

    :cond_15
    :goto_6
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_8

    :cond_16
    :goto_7
    const-string/jumbo v4, "set_always_on"

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_8

    :cond_17
    const-string/jumbo v4, "set_always_on"

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->removePreference(Ljava/lang/String;)Z

    :cond_18
    :goto_8
    const-string/jumbo v4, "support_web_signin"

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v4, :cond_1b

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.sec.android.app.sbrowser"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1a

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-eqz v4, :cond_19

    goto :goto_9

    :cond_19
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintVerification()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_a

    :cond_1a
    :goto_9
    const-string v4, "FpstFingerprintSettings"

    const-string v5, "setFingerprintPreference : Remove Web Sign-In"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "support_web_signin"

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->removePreference(Ljava/lang/String;)Z

    :cond_1b
    :goto_a
    const-string v4, "samsung_pay"

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_1d

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isFingerprintSupportSamsungPay(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-eqz v5, :cond_1d

    :cond_1c
    const-string v5, "FpstFingerprintSettings"

    const-string v6, "setFingerprintPreference : Remove SamsungPay"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "samsung_pay"

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->removePreference(Ljava/lang/String;)Z

    :cond_1d
    const-string/jumbo v5, "support_samsung_account"

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v5, :cond_24

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/security/SecurityUtils;->checkSAMenuChanged(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_23

    :cond_1e
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_23

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-eqz v5, :cond_1f

    goto :goto_f

    :cond_1f
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v5

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v6

    const-string v7, "FpstFingerprintSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setFingerprintPreference : Samsung Account  isSAVerfied : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " , isSASigndIn : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    if-eqz v5, :cond_20

    if-eqz v6, :cond_20

    move v8, v2

    goto :goto_b

    :cond_20
    move v8, v3

    :goto_b
    invoke-direct {p0, v7, v8}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    if-eqz v5, :cond_21

    if-eqz v6, :cond_21

    move v8, v2

    goto :goto_c

    :cond_21
    move v8, v3

    :goto_c
    invoke-direct {p0, v7, v8}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v5, :cond_22

    if-eqz v6, :cond_22

    move v8, v2

    goto :goto_d

    :cond_22
    move v8, v3

    :goto_d
    invoke-virtual {v7, v8}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_e

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_10

    :cond_23
    :goto_f
    const-string v5, "FpstFingerprintSettings"

    const-string v6, "setFingerprintPreference : Remove Samsung Account"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "support_samsung_account"

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->removePreference(Ljava/lang/String;)Z

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    :cond_24
    :goto_10
    const-string v5, "key_fingerprint_samsung_pass"

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_28

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eqz v6, :cond_25

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-eqz v6, :cond_27

    :cond_25
    iget-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-eqz v6, :cond_26

    goto :goto_11

    :cond_26
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120a23

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f120a22

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_12

    :cond_27
    :goto_11
    const-string v3, "FpstFingerprintSettings"

    const-string v6, "setFingerprintPreference : Remove SamsungPass"

    invoke-static {v3, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "key_fingerprint_samsung_pass"

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->removePreference(Ljava/lang/String;)Z

    :cond_28
    :goto_12
    if-eq v0, v2, :cond_29

    const-string v2, "FpstFingerprintSettings"

    const-string v3, "setFingerprintPreference : SUW Remove reigster category"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "key_fingerprint_add"

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->removePreference(Ljava/lang/String;)Z

    const-string v2, "change_reset_password"

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->removePreference(Ljava/lang/String;)Z

    const-string v2, "check_added_fingerprints"

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->removePreference(Ljava/lang/String;)Z

    :cond_29
    return-void
.end method

.method private setFingerprintVerification(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_webpass"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFingerprintVerification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setUseFingerprintForSA(Landroid/content/Context;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_used_samsungaccount"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFingerPrintOnSamsungAccountUsed:result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private showFingerprintDisclaimer()V
    .locals 4

    const-string v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "startBiometricsDisclaimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.biometrics.BiometricsDisclaimerSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "BIOMETRICS_LOCK_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "fromSettingsOption"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapper(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string v2, "FpstFingerprintSettings"

    const-string/jumbo v3, "startBiometricsDisclaimer : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showMobileKeyboardToastMsg()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f1209b6

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f120a3f

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startActivityForResultWrapper(Landroid/content/Intent;I)V
    .locals 3

    const-string v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivityForResultWrapper:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "isAfw"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "is_knox"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsKnox:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startActivityWrapper(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivityWrapper:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "isAfw"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "is_knox"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsKnox:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startActivityWrapperWithSessionClose(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivityWrapperWithSessionClose:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "isAfw"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "is_knox"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsKnox:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startFmmBackupPasswordPopup()V
    .locals 4

    const-string v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "startFmmBackupPasswordPopup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getFmmPopupIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x7d0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FpstFingerprintSettings"

    const-string v3, "Exception occured!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private startRenameFingerprint(I)V
    .locals 4

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result p1

    :cond_0
    const-string v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRenameFingerprint : fId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "selected_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "isAfw"

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "selected_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.android.settings"

    const-class v3, Lcom/android/settings/fingerprint/FingerprintSettingsEdit;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapper(Landroid/content/Intent;)V

    return-void
.end method

.method private startSelectListUI(I[Z)V
    .locals 4

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result p1

    :cond_0
    const-string v0, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSelectListUI : fId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], twChecklist["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "selected_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "isAfw"

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_1

    const-string/jumbo v1, "twmultiselected_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    :cond_1
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const/16 v2, 0x3ef

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroid/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f1202b5

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private stopFingerprint()V
    .locals 2

    const-string v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "stopFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "stopFingerprint cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAuth:Z

    return-void
.end method

.method private updateAddPreference()V
    .locals 6

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->getMaxFingerEnroll()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAddFingerprint:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    const-string v0, "key_fingerprint_add"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->removePreference(Ljava/lang/String;)Z

    const-string v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "updateAddPreference : Remove mAddFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "biometrics_backup_type"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v2

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-lez v3, :cond_1

    if-nez v2, :cond_1

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    :cond_1
    const-string v3, "change_reset_password"

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v3, :cond_2

    const-string v4, "change_reset_password"

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->removePreference(Ljava/lang/String;)Z

    const-string v4, "FpstFingerprintSettings"

    const-string/jumbo v5, "updateAddPreference : Remove mFingerprintPassword"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v4, "FpstFingerprintSettings"

    const-string/jumbo v5, "updateAddPreference : mFingerprintPassword is null"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    const-string v3, "FpstFingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAddPreference [mEnrolledFingerCount] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "updateOptionsMenu : menu is Null. Skip update"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    const v2, 0x7f120b1c

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isDispaySensor()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isDispaySensor()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    const v2, 0x7f1202f5

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_3
    return-void
.end method

.method private updatePreferences()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method protected finishFingerprintSettings()V
    .locals 2

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "finishFingerprintSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120b46

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2016

    return v0
.end method

.method protected handleError(ILjava/lang/CharSequence;)V
    .locals 3

    const-string v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleError errMsgId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :cond_0
    return-void

    :cond_1
    const-string v0, "FpstFingerprintSettings"

    const-string v2, "handleError FINGERPRINT_ERROR_CANCELED"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->stopFingerprint()V

    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsPreferenceClicked:Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====onActivityResult requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_9

    :sswitch_0
    const-string v0, "FpstFingerprintSettings"

    const-string v1, "FMM Dialog finished!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :sswitch_1
    const-string v0, "FpstFingerprintSettings"

    const-string v2, "activity. FINGERPRINT_MULTI_SELECT"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_16

    if-eqz p3, :cond_16

    const-string v0, "cancelsession"

    const-string v2, "reason"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    goto/16 :goto_9

    :sswitch_2
    if-eqz p3, :cond_0

    const-string v3, "hw_auth_token"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    :cond_0
    if-ne p2, v0, :cond_16

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_9

    :sswitch_3
    if-eqz p3, :cond_2

    const-string v3, "hw_auth_token"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    if-eqz v3, :cond_3

    const-string v3, "FpstFingerprintSettings"

    const-string v4, "reset runRegister"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    :cond_3
    if-eq p2, v0, :cond_7

    if-ne p2, v2, :cond_4

    goto :goto_1

    :cond_4
    if-nez p2, :cond_6

    if-eqz p3, :cond_16

    const-string v0, "enrollResult"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_5

    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    :cond_5
    goto/16 :goto_9

    :cond_6
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_16

    :try_start_0
    const-string v0, "FpstFingerprintSettings"

    const-string v2, "SAMSUNGACCOUNT : there is no case"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    goto/16 :goto_9

    :cond_7
    :goto_1
    const/4 v0, 0x0

    if-eqz p3, :cond_8

    :try_start_1
    const-string v1, "previousStage"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :cond_8
    :goto_2
    const-string/jumbo v1, "support_web_signin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "FpstFingerprintSettings"

    const-string v3, "previos stage is WebSingin"

    invoke-static {v1, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    :cond_9
    const-string v1, "samsung_pay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "FpstFingerprintSettings"

    const-string v3, "Fingerprint registered successfully! Launch the SamsungPay"

    invoke-static {v1, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.spay"

    const-string v4, "com.samsung.android.spay.ui.SpayMainActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "previousStage"

    const-string v4, "FingerprintSettings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V

    :cond_a
    const-string/jumbo v1, "support_samsung_account"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "FpstFingerprintSettings"

    const-string v3, "SamsungAccountSignedIn is False."

    invoke-static {v1, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v3, "com.osp.app.signin"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    array-length v4, v3

    if-nez v4, :cond_b

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "mypackage"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "OSP_VER"

    const-string v8, "OSP_02"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "MODE"

    const-string v8, "ADD_ACCOUNT"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "Is_From_SA_Verify"

    invoke-virtual {v6, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x66

    invoke-direct {p0, v6, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto :goto_3

    :cond_b
    const-string v2, "FpstFingerprintSettings"

    const-string v5, "returnvalue_sa is not 0"

    invoke-static {v2, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    goto :goto_5

    :cond_c
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "client_id"

    const-string v4, "s5d189ajvs"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "client_secret"

    const-string v4, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "Is_From_SA_Verify"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x65

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :goto_4
    nop

    const-string v1, "FpstFingerprintSettings"

    const-string v2, "data is null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_5
    goto/16 :goto_9

    :sswitch_4
    if-ne p2, v0, :cond_e

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "onActivityResult ChooseLockGeneric Granted"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_16

    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    goto/16 :goto_9

    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->finish()V

    goto/16 :goto_9

    :sswitch_5
    if-eq p2, v0, :cond_11

    if-ne p2, v2, :cond_f

    goto :goto_6

    :cond_f
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string v0, "FpstFingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SAMSUNGACCOUNT_REQUEST RESULT_NOK setChecked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "fingerprint_used_samsungaccount"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_10

    move v1, v2

    nop

    :cond_10
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_9

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    :cond_11
    :goto_6
    :try_start_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string v0, "FpstFingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SAMSUNGACCOUNT_REQUEST RESULT_OK setChecked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "fingerprint_used_samsungaccount"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_12

    move v1, v2

    nop

    :cond_12
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    goto/16 :goto_9

    :sswitch_6
    if-ne p2, v0, :cond_14

    :try_start_4
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string v0, "FpstFingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SAMSUNGACCOUNT_EXISTING_REQUEST RESULT_OK setChecked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "fingerprint_used_samsungaccount"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_13

    move v1, v2

    nop

    :cond_13
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    goto :goto_9

    :cond_14
    :try_start_5
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string v0, "FpstFingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SAMSUNGACCOUNT_EXISTING_REQUEST RESULT_NOK setChecked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "fingerprint_used_samsungaccount"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_15

    move v1, v2

    nop

    :cond_15
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :cond_16
    :goto_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_6
        0x66 -> :sswitch_5
        0xc9 -> :sswitch_4
        0x3e8 -> :sswitch_3
        0x3e9 -> :sswitch_3
        0x3ee -> :sswitch_2
        0x3ef -> :sswitch_1
        0x7d0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenState:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenState:I

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "=====onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "FpstFingerprintSettings"

    const v2, 0x7f1202b5

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "tokenFromLock"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "identifyFingerprint"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    const-string v2, "isAfw"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    const-string v2, "is_knox"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsKnox:Z

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    const-string v2, "relative_link"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsRelativeLink:Z

    const-string v2, "from_search"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsSearchEntry:Z

    const-string v2, "need_fmm_popup"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mNeedFmmPopup:Z

    const-string v2, "FpstFingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsAfw : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "FpstFingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsKnox : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsKnox:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "FpstFingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUserId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "FpstFingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsRelativeLink : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsRelativeLink:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsSearchEntry : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsSearchEntry:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "FpstFingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNeedFmmPopup : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mNeedFmmPopup:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    :cond_1
    goto :goto_0

    :cond_2
    const-string v1, "FpstFingerprintSettings"

    const-string v2, "args is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenState:I

    if-eqz p1, :cond_3

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->setHasOptionsMenu(Z)V

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "=====onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "=====onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    if-eqz v0, :cond_0

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "reset runRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    :cond_0
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    move-result v0

    :cond_1
    if-gez v0, :cond_2

    const-string v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postEnroll failed: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onMultiWindowModeChanged(Z)V

    const-string v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMultiWindowModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isResumed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsKeepEnrollSession:Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showFingerprintDisclaimer()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "helphub:appid"

    const-string v2, "finger_scanner"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapper(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "helphub:section"

    const-string v2, "fingerprints"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapper(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x2016

    const/16 v1, 0x2017

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    nop

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "=====onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1209de

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 12

    const-string v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====onPreferenceChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fingerprint_enable_keyguard_toggle"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    const/16 v7, 0x2016

    const/4 v8, 0x1

    if-eqz v2, :cond_3

    const/16 v2, 0x2021

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    move-wide v3, v5

    nop

    :cond_1
    invoke-static {v7, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v8, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startDisclaimerFromWebSignin()Z

    move-result v2

    return v2

    :cond_2
    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    goto/16 :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_6

    const/16 v2, 0x201e

    move-object v10, p2

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    move-wide v3, v5

    nop

    :cond_4
    invoke-static {v7, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iput-boolean v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v8, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startDisclaimerFromSamsungAccount()Z

    move-result v2

    return v2

    :cond_5
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v2, v9}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v2, v9}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string v2, "FpstFingerprintSettings"

    const-string v3, "SAMSUNGACCOUNT value is false "

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    goto/16 :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFastRecognition:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintFastRecognition(Landroid/content/Context;ZI)V

    goto/16 :goto_2

    :cond_7
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v2, v10}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v2

    const-string v10, "FpstFingerprintSettings"

    const-string v11, "passwordQuality : passwordQuality"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0x2020

    move-object v11, p2

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_8

    move-wide v3, v5

    nop

    :cond_8
    invoke-static {v7, v10, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v3, v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->removeFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isSideSensor()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_9
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAdaptiveIcon:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isDispaySensor()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAdaptiveIcon:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_a
    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v3, v4, v9}, Lcom/samsung/android/settings/knox/KnoxUtils;->setTwoFactorValue(Landroid/content/Context;II)V

    :cond_b
    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    goto :goto_1

    :cond_c
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-eqz v3, :cond_10

    const v3, 0x10001

    if-ne v2, v3, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_d
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    const-string v6, "fingerprint_settings_set_screen_lock"

    invoke-static {v3, v4, v5, v6, v8}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;Z)V

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isSideSensor()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v8}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_e
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAdaptiveIcon:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_f

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isDispaySensor()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAdaptiveIcon:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v8}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_f
    :goto_1
    goto/16 :goto_2

    :cond_10
    const-string v3, "FpstFingerprintSettings"

    const-string v4, "Launch the FingerprintLockSettings"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "previousStage"

    const-string v5, "fingerprint_settings_set_screen_lock"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "fingerprintlockEnable"

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "hw_auth_token"

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v4, "identifyFingerprint"

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v4, 0x3ee

    invoke-direct {p0, v3, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    return v9

    :cond_11
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v2, v8, v9}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintAlwaysOnValue(Landroid/content/Context;ZI)V

    const/16 v2, 0x2047

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_12

    move-wide v3, v5

    nop

    :cond_12
    invoke-static {v7, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_2

    :cond_13
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAdaptiveIcon:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-static {v2, v8, v9}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintAdaptiveIconValue(Landroid/content/Context;ZI)V

    const/16 v2, 0x2049

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_14

    move-wide v3, v5

    nop

    :cond_14
    invoke-static {v7, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_2

    :cond_15
    const-string v2, "FpstFingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 9

    const-string v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====onPreferenceTreeClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/settings/fingerprint/FingerprintSwitchPreference;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsPreferenceClicked:Z

    if-eqz v0, :cond_0

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "onPreferenceTreeClick : Other preferece already clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsPreferenceClicked:Z

    goto :goto_0

    :cond_1
    const-string v0, "FpstFingerprintSettings"

    const-string v3, "onPreferenceTreeClick : SwitchPreference tree clicked!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x1

    instance-of v5, p1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    const/16 v6, 0x2016

    if-eqz v5, :cond_2

    const/16 v1, 0x201a

    invoke-static {v6, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const/16 v1, 0x201b

    invoke-static {v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    move-object v1, p1

    check-cast v1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->startRenameFingerprint(I)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v5

    return v5

    :cond_2
    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "key_fingerprint_add"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_2

    :sswitch_1
    const-string v1, "key_fingerprint_samsung_pass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_2
    const-string v1, "samsung_pay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_3
    const-string v1, "check_added_fingerprints"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_4
    const-string v7, "change_reset_password"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :sswitch_5
    const-string/jumbo v1, "support_samsung_account"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v5

    :goto_2
    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    :pswitch_0
    const-string v1, "FpstFingerprintSettings"

    const-string v2, "FingerprintSettingsUtils.KEY_CHECK_ADDED_FINGERPRINTS clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2048

    invoke-static {v6, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isDisableScreenForDisplayFingerprint(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->registerAuthenticate()V

    goto/16 :goto_4

    :pswitch_1
    const/16 v1, 0x201d

    invoke-static {v6, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const-string v1, "com.samsung.android.samsungpass.ACTION_USE_BIOMETRIC"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "biometricType"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V

    goto/16 :goto_4

    :pswitch_2
    const/16 v1, 0x201f

    invoke-static {v6, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showMobileKeyboardToastMsg()V

    goto :goto_3

    :cond_4
    const-string v1, "FpstFingerprintSettings"

    const-string v2, "There is no registered fingerprint"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "samsung_pay"

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v1, "FpstFingerprintSettings"

    const-string v2, "There is Registered Fingerprint. Launch the SamsungPay"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.android.spay"

    const-string v2, "com.samsung.android.spay.ui.SpayMainActivity"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "previousStage"

    const-string v2, "FingerprintSettings"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V

    :goto_3
    const/4 v4, 0x0

    goto :goto_4

    :pswitch_3
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startDisclaimerFromSamsungAccount()Z

    move-result v1

    return v1

    :cond_6
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    goto :goto_4

    :pswitch_4
    const-string v1, "previousStage"

    const-string v2, "changepassword"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-class v2, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3ea

    invoke-direct {p0, v3, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto :goto_4

    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->stopFingerprint()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$4;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    const-wide/16 v7, 0x1f4

    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v1, 0x201c

    invoke-static {v6, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    nop

    :cond_7
    :goto_4
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77be5188 -> :sswitch_5
        0x928dbfa -> :sswitch_4
        0xa985185 -> :sswitch_3
        0x2ca112e3 -> :sswitch_2
        0x2fe2ea91 -> :sswitch_1
        0x7b32d4e6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "=====onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updatePreferences()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FpstFingerprintSettings"

    const-string v2, "Enroll session close."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semIsEnrollSession()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FpstFingerprintSettings"

    const-string v2, "Session closed! Token must be null!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mNeedFmmPopup:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mNeedFmmPopup:Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startFmmBackupPasswordPopup()V

    :cond_2
    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsPreferenceClicked:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v0, "FpstFingerprintSettings"

    const-string v1, "onViewCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startDisclaimerFromSamsungAccount()Z
    .locals 8

    const-string v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "startDisclaimerFromSamsungAccount"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showMobileKeyboardToastMsg()V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "support_samsung_account"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    if-nez v3, :cond_2

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "mypackage"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "OSP_VER"

    const-string v7, "OSP_02"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "MODE"

    const-string v7, "ADD_ACCOUNT"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "Is_From_SA_Verify"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v6, 0x66

    invoke-direct {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_2
    const-string v4, "FpstFingerprintSettings"

    const-string v5, "returnvalue_sa is not 0"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_2

    :cond_3
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

    const/16 v2, 0x65

    invoke-direct {p0, v0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    :goto_2
    return v1
.end method

.method public startDisclaimerFromWebSignin()Z
    .locals 2

    const-string v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "startDisclaimerFromWebSignin"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showMobileKeyboardToastMsg()V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "support_web_signin"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    return v0
.end method
