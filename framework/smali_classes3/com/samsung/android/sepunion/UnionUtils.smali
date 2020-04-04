.class public Lcom/samsung/android/sepunion/UnionUtils;
.super Ljava/lang/Object;
.source "UnionUtils.java"


# static fields
.field public static FEATURE_ENABLED:Z = false

.field private static final FEATURE_NFC_AUTHENTICATION:Ljava/lang/String; = "com.sec.feature.nfc_authentication"

.field private static final FEATURE_USB_AUTHENTICATION:Ljava/lang/String; = "com.sec.feature.usb_authentication"

.field private static sInstance:Lcom/samsung/android/sepunion/UnionUtils;

.field private static sIsCoverSupported:Z

.field private static sIsNfcAuthEnabled:Z

.field private static sIsUsbAuthEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sepunion/UnionUtils;->sInstance:Lcom/samsung/android/sepunion/UnionUtils;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sepunion/UnionUtils;->FEATURE_ENABLED:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sepunion/UnionUtils;->sIsNfcAuthEnabled:Z

    sput-boolean v0, Lcom/samsung/android/sepunion/UnionUtils;->sIsUsbAuthEnabled:Z

    sput-boolean v0, Lcom/samsung/android/sepunion/UnionUtils;->sIsCoverSupported:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/sepunion/UnionUtils;->updateSystemFeature(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/sepunion/UnionUtils;
    .locals 1

    sget-object v0, Lcom/samsung/android/sepunion/UnionUtils;->sInstance:Lcom/samsung/android/sepunion/UnionUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sepunion/UnionUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/sepunion/UnionUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sepunion/UnionUtils;->sInstance:Lcom/samsung/android/sepunion/UnionUtils;

    :cond_0
    sget-object v0, Lcom/samsung/android/sepunion/UnionUtils;->sInstance:Lcom/samsung/android/sepunion/UnionUtils;

    return-object v0
.end method

.method private updateSystemFeature(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.sec.feature.nfc_authentication"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/sepunion/UnionUtils;->sIsNfcAuthEnabled:Z

    const-string v1, "com.sec.feature.usb_authentication"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/sepunion/UnionUtils;->sIsUsbAuthEnabled:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/sepunion/UnionUtils;->sIsCoverSupported:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public isCoverSupported()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sepunion/UnionUtils;->sIsCoverSupported:Z

    return v0
.end method

.method public isNfcAuthEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sepunion/UnionUtils;->sIsNfcAuthEnabled:Z

    return v0
.end method

.method public isUsbAuthEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sepunion/UnionUtils;->sIsUsbAuthEnabled:Z

    return v0
.end method
