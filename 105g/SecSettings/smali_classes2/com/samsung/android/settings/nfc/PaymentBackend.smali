.class public Lcom/samsung/android/settings/nfc/PaymentBackend;
.super Ljava/lang/Object;
.source "PaymentBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    }
.end annotation


# static fields
.field private static final CSC_SALES_CODE:Ljava/lang/String;

.field static final DBG:Z

.field private static final OMC_SALES_CODE:Ljava/lang/String;

.field private static final SALES_CODE:Ljava/lang/String;

.field private static final isSupportFelica:Z


# instance fields
.field private final mAdapter:Landroid/nfc/NfcAdapter;

.field private mAppName:Landroid/content/ComponentName;

.field private final mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private final mContext:Landroid/content/Context;

.field private mDefaultAppInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->DBG:Z

    const-string v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->OMC_SALES_CODE:Ljava/lang/String;

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->CSC_SALES_CODE:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->OMC_SALES_CODE:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->OMC_SALES_CODE:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->OMC_SALES_CODE:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->CSC_SALES_CODE:Ljava/lang/String;

    :goto_1
    sput-object v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->SALES_CODE:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->isSupportFelica:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mAdapter:Landroid/nfc/NfcAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/nfc/PaymentBackend;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setDefaultPayment(Landroid/content/ComponentName;Z)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const-string v2, "payment"

    invoke-virtual {v1, p1, v2}, Landroid/nfc/cardemulation/CardEmulation;->registerService(Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v1

    sget-boolean v2, Lcom/samsung/android/settings/nfc/PaymentBackend;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "Settings.PaymentBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    retval : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v2, 0x3e8

    if-gt v2, v1, :cond_6

    const/16 v2, 0x1fa5

    if-ne v1, v2, :cond_1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mAppName:Landroid/content/ComponentName;

    goto :goto_1

    :cond_1
    const/16 v2, 0x244c

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "KDI"

    sget-object v3, Lcom/samsung/android/settings/nfc/PaymentBackend;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "KDR"

    sget-object v3, Lcom/samsung/android/settings/nfc/PaymentBackend;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/16 v2, 0x23c1

    if-eq v1, v2, :cond_5

    const/16 v2, 0x244b

    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_4
    const v2, 0x7f120f77

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/settings/nfc/PaymentBackend;->showErrorDialog(IZ)Z

    move-result v0

    goto :goto_1

    :cond_5
    :goto_0
    const v2, 0x7f120f78

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/settings/nfc/PaymentBackend;->showErrorDialog(IZ)Z

    move-result v0

    :cond_6
    :goto_1
    return v0
.end method

.method private showErrorDialog(IZ)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v1, Lcom/samsung/android/settings/nfc/PaymentBackend$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/PaymentBackend$1;-><init>(Lcom/samsung/android/settings/nfc/PaymentBackend;)V

    move-object v0, v1

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    xor-int/lit8 v2, p2, 0x1

    return v2
.end method


# virtual methods
.method public ActionRetry()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mAppName:Landroid/content/ComponentName;

    const-string v2, "payment"

    invoke-virtual {v0, v1, v2}, Landroid/nfc/cardemulation/CardEmulation;->registerService(Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v0

    sget-boolean v1, Lcom/samsung/android/settings/nfc/PaymentBackend;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Settings.PaymentBackend"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    retval : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v1, 0x3e8

    if-gt v1, v0, :cond_4

    const/16 v1, 0x1fa5

    if-ne v0, v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/settings/nfc/PaymentBackend;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "Settings.PaymentBackend"

    const-string v2, "pin verification is needed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/16 v1, 0x23c1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0x244b

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const v1, 0x7f120f77

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/nfc/PaymentBackend;->showErrorDialog(IZ)Z

    goto :goto_1

    :cond_3
    :goto_0
    const v1, 0x7f120f78

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/nfc/PaymentBackend;->showErrorDialog(IZ)Z

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mAppName:Landroid/content/ComponentName;

    :cond_5
    :goto_1
    return-void
.end method

.method public getDefaultApp()Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mDefaultAppInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    return-object v0
.end method

.method getDefaultPaymentApp()Landroid/content/ComponentName;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_payment_default_component"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPaymentAppInfos()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const-string v2, "payment"

    invoke-virtual {v1, v2}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getDefaultPaymentApp()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo;

    new-instance v7, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-direct {v7}, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;-><init>()V

    invoke-virtual {v6, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    iget-object v8, v7, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    if-nez v8, :cond_1

    invoke-virtual {v6, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadAppLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    :cond_1
    sget-boolean v8, Lcom/samsung/android/settings/nfc/PaymentBackend;->isSupportFelica:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    const-string v10, "payment"

    invoke-virtual {v8, v9, v10}, Landroid/nfc/cardemulation/CardEmulation;->isRegisteredService(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    :goto_1
    iget-boolean v8, v7, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-eqz v8, :cond_3

    move-object v4, v7

    :cond_3
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, v7, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v7, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v7, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    iput-object v9, v7, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    :goto_2
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->description:Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v7, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    iget-object v9, v7, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getBannerName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/nfc/NfcAdapter;->loadBanner(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_5

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v10, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v10, v7, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    :cond_5
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->isAidBased()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    iput-boolean v9, v7, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isNonAidService:Z

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    iput-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mDefaultAppInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    return-object v2
.end method

.method isForegroundMode()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_payment_foreground"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public setDefaultPaymentApp(Landroid/content/ComponentName;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Settings.PaymentBackend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultPaymentApp In / ComponentName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "KDI"

    sget-object v1, Lcom/samsung/android/settings/nfc/PaymentBackend;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "KDR"

    sget-object v1, Lcom/samsung/android/settings/nfc/PaymentBackend;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SBM"

    sget-object v1, Lcom/samsung/android/settings/nfc/PaymentBackend;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_payment_default_component"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setDefaultPayment(Landroid/content/ComponentName;Z)Z

    :goto_2
    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "Settings.PaymentBackend"

    const-string v1, "setDefaultPaymentApp Out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public setDefaultPaymentAppFromDefaultDialog(Landroid/content/ComponentName;)Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->isSupportFelica:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setDefaultPayment(Landroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method setForegroundMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_payment_foreground"

    nop

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
