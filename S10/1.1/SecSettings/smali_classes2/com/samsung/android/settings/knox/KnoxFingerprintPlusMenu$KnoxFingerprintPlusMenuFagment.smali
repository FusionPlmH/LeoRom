.class public Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KnoxFingerprintPlusMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KnoxFingerprintPlusMenuFagment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;
    }
.end annotation


# static fields
.field private static PREF_TYPE_NORMAL:Ljava/lang/String;

.field private static PREF_TYPE_SWITCH:Ljava/lang/String;

.field private static isKeepEnrollSession:Z

.field private static mEdit_TextView:Landroid/widget/TextView;

.field protected static mFragment:Landroid/app/Fragment;

.field private static mListView:Landroid/support/v7/widget/RecyclerView;

.field private static mPrefType:Ljava/lang/String;

.field public static mSelectedKey:Ljava/lang/String;


# instance fields
.field private colorId_identifiedId:I

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

.field private mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mEnrolledFingerCount:I

.field private mFingerprintCancel:Landroid/os/CancellationSignal;

.field private final mFingerprintLockoutReset:Ljava/lang/Runnable;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field final mH:Landroid/os/Handler;

.field private final mHandler:Landroid/os/Handler;

.field private mIdentifyFingerprint:Z

.field private mInFingerprintLockout:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mRegisterCategory:Landroid/support/v7/preference/SecPreferenceCategory;

.field private mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

.field mSharedPreferences:Landroid/content/SharedPreferences;

.field private mToken:[B

.field private mUserId:I

.field private origin_color_identifiedId:Landroid/content/res/ColorStateList;

.field private origin_typeface:Landroid/graphics/Typeface;

.field private retryFingerprintRunnable:Ljava/lang/Runnable;

.field private through_onpreferencechange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mListView:Landroid/support/v7/widget/RecyclerView;

    sput-object v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEdit_TextView:Landroid/widget/TextView;

    sput-object v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFragment:Landroid/app/Fragment;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isKeepEnrollSession:Z

    sput-object v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mPrefType:Ljava/lang/String;

    const-string v0, "switchtype"

    sput-object v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->PREF_TYPE_SWITCH:Ljava/lang/String;

    const-string v0, "normaltype"

    sput-object v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->PREF_TYPE_NORMAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->colorId_identifiedId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->origin_typeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->through_onpreferencechange:Z

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mH:Landroid/os/Handler;

    iput v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mIdentifyFingerprint:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isRunRegister:Z

    new-instance v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$1;-><init>(Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    new-instance v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$2;-><init>(Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$3;-><init>(Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->retryFingerprintRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$5;-><init>(Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->updateIdentifiedFinger(ZI)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->retryFingerprint()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->runRegister(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$702(Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mInFingerprintLockout:Z

    return p1
.end method

.method private addFingerprintItemPreferences()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "PREV_FINGER_PLUS_ID"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getFingerprintPlusForKey(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    move v3, v4

    :goto_0
    iget v6, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    if-ge v3, v6, :cond_2

    move v6, v3

    :goto_1
    if-lez v6, :cond_1

    iget-object v7, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    add-int/lit8 v8, v6, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v8}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v8

    if-le v7, v8, :cond_1

    iget-object v7, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    add-int/lit8 v8, v6, -0x1

    iget-object v9, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {v7, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v7, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    add-int/lit8 v8, v6, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    iget-object v6, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eq v3, v6, :cond_3

    const-string v3, "KnoxFingerprintPlusMenu"

    const-string v6, "addFingerprintItemPreferences : Sort Error"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mUserId:I

    invoke-virtual {v1, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    :cond_3
    const-string v1, "KnoxFingerprintPlusMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addFingerprintItemPreferences : mEnrolledFingerCount["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    if-eqz v1, :cond_6

    move v1, v4

    :goto_2
    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    if-ge v1, v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    new-instance v6, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;

    invoke-direct {v6, v0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->genKey(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    sget-object v7, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mPrefType:Ljava/lang/String;

    sget-object v8, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->PREF_TYPE_SWITCH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const v7, 0x7f0d0135

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setLayoutResource(I)V

    const v7, 0x7f0d00e4

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setWidgetLayoutResource(I)V

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v7

    if-ne v2, v7, :cond_4

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setChecked(Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {v6, v4}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setChecked(Z)V

    goto :goto_3

    :cond_5
    const v7, 0x7f0d008a

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setLayoutResource(I)V

    :goto_3
    invoke-virtual {v6, v1}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setOrder(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mRegisterCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v7, v6}, Landroid/support/v7/preference/SecPreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iput v4, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    const-string v1, "KnoxFingerprintPlusMenu"

    const-string v3, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null 2"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    iput v4, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    const-string v1, "KnoxFingerprintPlusMenu"

    const-string v3, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null 1"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->updateAddPreference()V

    new-instance v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string v3, "pref_knox_fingerprint_check_added"

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->getMaxFingerEnroll()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1209c7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private cancelAndSessionEnd()V
    .locals 2

    const-string v0, "KnoxFingerprintPlusMenu"

    const-string v1, "cancelAndSessionEnd() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->stopFingerprint()V

    sget-boolean v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isKeepEnrollSession:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isKeepEnrollSession:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_1
    :goto_0
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "KnoxFingerprintPlusMenu"

    const-string v2, "createPreferenceHierarchy : remove all"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v1, 0x7f15005b

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->setFingerprintPreference()V

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->addFingerprintItemPreferences()V

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

.method private getFingerprintPlusForKey(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, -0x1

    invoke-static {v0, p1, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getIndexForRegisteration()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method private retryFingerprint()V
    .locals 4

    const-string v0, "KnoxFingerprintPlusMenu"

    const-string v1, "retryFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->retryFingerprintRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private runRegister(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "fingerIndex"

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getIndexForRegisteration()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "previousStage"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "identifyFingerprint"

    iget-boolean v2, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mIdentifyFingerprint:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;->access$602(Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mToken:[B

    if-eqz v1, :cond_0

    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isRunRegister:Z

    if-eqz v1, :cond_1

    const-string v1, "KnoxFingerprintPlusMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runRegister already called : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isRunRegister:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isRunRegister:Z

    const-string v1, "KnoxFingerprintPlusMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runRegister called : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isRunRegister:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    if-lez v1, :cond_2

    const/16 v1, 0x3e9

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private setFingerprintPlusForKey(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private setFingerprintPreference()V
    .locals 1

    const-string v0, "register_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mRegisterCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->setStorageDeviceProtected()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private startActivityForResultWrapper(Landroid/content/Intent;I)V
    .locals 3

    const-string v0, "KnoxFingerprintPlusMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivityForResultWrapper:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isKeepEnrollSession:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startBiometricAuthentication(IZ)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;->access$602(Z)Z

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "fingerId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "userId"

    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "preftype"

    sget-object v3, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mPrefType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "check_added"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0x68

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KnoxFingerprintPlusMenu"

    const-string v2, "KnoxDedicatedFingerPrintDialog not found."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private stopFingerprint()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KnoxFingerprintPlusMenu"

    const-string v1, "stopFingerprint cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->retryFingerprintRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    return-void
.end method

.method private updateAddPreference()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->getMaxFingerEnroll()I

    move-result v1

    if-lt v0, v1, :cond_1

    const-string v0, "key_fingerprint_add"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mRegisterCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string v1, "KnoxFingerprintPlusMenu"

    const-string v2, "updateAddPreference : Remove mAddFingerprint"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "KnoxFingerprintPlusMenu"

    const-string v2, "updateAddPreference : mAddFingerprint is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized updateIdentifiedFinger(ZI)V
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string v0, "PREV_FINGER_PLUS_ID"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getFingerprintPlusForKey(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_1
    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->genKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;

    const/4 v6, 0x1

    if-ne v0, v3, :cond_0

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setChecked(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {v5, v1}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setChecked(Z)V

    :goto_1
    invoke-virtual {v5}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->getView()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    const v9, 0x1020016

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object v8, v9

    :cond_1
    if-eqz v8, :cond_5

    iget-object v9, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    if-nez v9, :cond_2

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->origin_typeface:Landroid/graphics/Typeface;

    if-nez v9, :cond_3

    invoke-virtual {v8}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->origin_typeface:Landroid/graphics/Typeface;

    :cond_3
    if-eqz p1, :cond_4

    if-ne p2, v3, :cond_5

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget v6, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->colorId_identifiedId:I

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v6, "KnoxFingerprintPlusMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateIdentifiedFinger identified["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->origin_typeface:Landroid/graphics/Typeface;

    invoke-virtual {v8, v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v6, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const-string v6, "KnoxFingerprintPlusMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateIdentifiedFinger["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_3
    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "KnoxFingerprintPlusMenu"

    const-string v3, "updateIdentifiedFinger : Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception v1

    const-string v2, "KnoxFingerprintPlusMenu"

    const-string v3, "updateIdentifiedFinger : IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updatePreferences()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->retryFingerprint()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2016

    return v0
.end method

.method protected handleError(ILjava/lang/CharSequence;)V
    .locals 4

    const-string v0, "KnoxFingerprintPlusMenu"

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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mInFingerprintLockout:Z

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :cond_2
    return-void

    :cond_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "KnoxFingerprintPlusMenu"

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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x68

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p1, v0, :cond_b

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_9

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    if-eqz p3, :cond_0

    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mToken:[B

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isRunRegister:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string v0, "KnoxFingerprintPlusMenu"

    const-string v4, "reset runRegister"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isRunRegister:Z

    :cond_1
    if-eq p2, v2, :cond_4

    if-ne p2, v1, :cond_2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_10

    if-eqz p3, :cond_10

    const-string v0, "enrollResult"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    sput-boolean v3, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isKeepEnrollSession:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->cancelAndSessionEnd()V

    :cond_3
    goto/16 :goto_7

    :cond_4
    :goto_0
    const/4 v0, 0x0

    if-eqz p3, :cond_5

    :try_start_0
    const-string v4, "previousStage"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    iget-object v4, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, -0x1

    nop

    :goto_2
    if-ge v3, v4, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v7

    if-le v7, v5, :cond_6

    move v5, v7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    const-string v3, "FINGERPRINT_PLUS_STATE"

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->setFingerprintPlusForKey(Ljava/lang/String;I)V

    const-string v1, "PREV_FINGER_PLUS_ID"

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->setFingerprintPlusForKey(Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->finish()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    nop

    const-string v1, "KnoxFingerprintPlusMenu"

    const-string v2, "data is null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    goto/16 :goto_7

    :cond_9
    if-ne p2, v2, :cond_a

    const-string v0, "KnoxFingerprintPlusMenu"

    const-string v1, "onActivityResult ChooseLockGeneric Granted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_10

    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mToken:[B

    goto/16 :goto_7

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->finish()V

    goto :goto_7

    :cond_b
    if-ne p2, v2, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mUserId:I

    invoke-virtual {v0, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v3, "FINGERPRINT_PLUS_STATE"

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->setFingerprintPlusForKey(Ljava/lang/String;I)V

    const-string v1, "PREV_FINGER_PLUS_ID"

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->setFingerprintPlusForKey(Ljava/lang/String;I)V

    goto :goto_6

    :cond_d
    goto :goto_5

    :cond_e
    :goto_6
    invoke-static {v2}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;->access$402(I)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;->access$400()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_7

    :cond_f
    const-string v0, "KnoxFingerprintPlusMenu"

    const-string v1, "Failed to authenticate."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_10
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "KnoxFingerprintPlusMenu"

    const-string v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "KnoxFingerprintPlusMenu"

    const-string v1, "=====onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;->access$402(I)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;->access$400()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "preftype"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mPrefType:Ljava/lang/String;

    :cond_0
    sput-object p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFragment:Landroid/app/Fragment;

    iput v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mUserId:I

    const-string v0, "KnoxFingerprintPlusMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUserId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string v0, "hw_auth_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mToken:[B

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->colorId_identifiedId:I

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mListView:Landroid/support/v7/widget/RecyclerView;

    sput-object v1, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEdit_TextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const-string v0, "KnoxFingerprintPlusMenu"

    const-string v1, "=====onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    const-string v0, "KnoxFingerprintPlusMenu"

    const-string v1, "=====onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isRunRegister:Z

    if-eqz v0, :cond_0

    const-string v0, "KnoxFingerprintPlusMenu"

    const-string v1, "reset runRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->isRunRegister:Z

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mEnrolledFingerCount:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setOnEditPressedListener(Lcom/android/settings/SettingsActivity$onEditButtonClicked;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string v0, "KnoxFingerprintPlusMenu"

    const-string v1, "=====onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 12

    const-string v0, "KnoxFingerprintPlusMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====onPreferenceTreeClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x1

    const-string v3, "PREV_FINGER_PLUS_ID"

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getFingerprintPlusForKey(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x77a5be9

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v5, v6, :cond_1

    const v6, 0x7b32d4e6

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "key_fingerprint_add"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v8

    goto :goto_1

    :cond_1
    const-string v5, "pref_knox_fingerprint_check_added"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, -0x1

    :goto_1
    packed-switch v5, :pswitch_data_0

    sput-object v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mSelectedKey:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    instance-of v6, v5, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;

    if-eqz v6, :cond_6

    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    goto :goto_3

    :pswitch_0
    invoke-direct {p0, v4, v7}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->startBiometricAuthentication(IZ)V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->stopFingerprint()V

    iget-object v5, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$4;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$4;-><init>(Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;)V

    const-wide/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    nop

    :goto_2
    return v2

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v9}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v9}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    if-ne v3, v4, :cond_3

    move-object v6, v5

    check-cast v6, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setChecked(Z)V

    return v8

    :cond_3
    move-object v11, v5

    check-cast v11, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;

    invoke-virtual {v11, v8}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->setChecked(Z)V

    :cond_4
    goto :goto_3

    :cond_5
    invoke-direct {p0, v4, v8}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->startBiometricAuthentication(IZ)V

    :cond_6
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v6

    return v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "KnoxFingerprintPlusMenu"

    const-string v1, "=====onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->updatePreferences()V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mToken:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KnoxFingerprintPlusMenu"

    const-string v1, "Enroll session close."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mToken:[B

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mListView:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->updateIdentifiedFinger(ZI)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "hw_auth_token"

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v0, "KnoxFingerprintPlusMenu"

    const-string v1, "onViewCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
