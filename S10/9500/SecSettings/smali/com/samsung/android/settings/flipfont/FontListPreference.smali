.class public Lcom/samsung/android/settings/flipfont/FontListPreference;
.super Landroid/preference/ListPreference;
.source "FontListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field public static NO_CANCEL:Z

.field public static NO_WARNING_DIALOG:Z

.field public static REBOOT:Z

.field private static final apkNameList:[Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mBuyButtonClicked:Z

.field private mCheckBadFont:Z

.field private mClickedItem:I

.field private mFileCopying:Z

.field private mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

.field private mListDialogIsActive:Z

.field private mPackageName:Ljava/lang/String;

.field private mPreviousFont:I

.field private mQuestionDialogFontSize:I

.field private mRebootDialogIsActive:Z

.field private mSavedClickedItem:I

.field private mSelectDialogIsActive:Z

.field mSetFontToAlert:Landroid/app/AlertDialog;

.field mState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->REBOOT:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/settings/flipfont/FontListPreference;->NO_WARNING_DIALOG:Z

    sput-boolean v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->NO_CANCEL:Z

    sput-boolean v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    const-string v2, ""

    const-string v3, "com.monotype.android.font.chococooky"

    const-string v4, "com.monotype.android.font.cooljazz"

    const-string v5, "com.monotype.android.font.helvneuelt"

    const-string v6, "com.monotype.android.font.samsungsans"

    const-string v7, "com.monotype.android.font.rosemary"

    const-string v8, "com.monotype.android.font.applemint"

    const-string v9, "com.monotype.android.font.tinkerbell"

    const-string v10, "com.monotype.android.font.udrgothic"

    const-string v11, "com.monotype.android.font.udmincho"

    const-string v12, "com.monotype.android.font.arjpopb"

    const-string v13, "com.monotype.android.font.kaiti"

    const-string v14, "com.monotype.android.font.shaonv"

    const-string v15, "com.monotype.android.font.miao"

    filled-new-array/range {v2 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->apkNameList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    iput v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFileCopying:Z

    const/16 v3, 0x14

    iput v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mQuestionDialogFontSize:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    iput v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mListDialogIsActive:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mCheckBadFont:Z

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mState:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPackageName:Ljava/lang/String;

    const-string v0, "aa/bb"

    sget-boolean v1, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FlipFont"

    const-string v2, "FontListPreference(Context context, AttributeSet attrs)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v1, "MONOTYPE"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->setKey(Ljava/lang/String;)V

    const v1, 0x7f12155c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->setTitle(I)V

    const-string v2, "MONOTYPE"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/flipfont/FontListPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->setTitle(I)V

    const v1, 0x7f121561

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->setDialogTitle(I)V

    sget-boolean v1, Lcom/samsung/android/settings/flipfont/FontListPreference;->NO_CANCEL:Z

    if-nez v1, :cond_1

    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->setNegativeButtonText(I)V

    :cond_1
    const v1, 0x7f08039a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->setDialogIcon(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/flipfont/FontListPreference;)Lcom/samsung/android/settings/flipfont/FontListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/settings/flipfont/FontListPreference;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/settings/flipfont/FontListPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/flipfont/FontListPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/flipfont/FontListPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    return p1
.end method

.method static synthetic access$502(Lcom/samsung/android/settings/flipfont/FontListPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    return p1
.end method

.method private copyFileWithCR(Lcom/samsung/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v3

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v5

    nop

    invoke-virtual {p1, p2, v1, p5}, Lcom/samsung/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :goto_0
    return v2

    :catch_1
    move-exception v5

    return v1

    :catch_2
    move-exception v1

    return v2
.end method


# virtual methods
.method protected RebootDialog()V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FlipFont"

    const-string v1, "RebootDialog()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->hideList()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12155f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f12155e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f12155d

    new-instance v4, Lcom/samsung/android/settings/flipfont/FontListPreference$10;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$10;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/samsung/android/settings/flipfont/FontListPreference$9;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$9;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/flipfont/FontListPreference$11;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$11;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected badFontDialog(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    const v2, 0x7f12155b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f12155a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/flipfont/FontListPreference$13;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference$13;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;Ljava/lang/String;)V

    const v3, 0x104000a

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/flipfont/FontListPreference$14;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$14;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected checkFont(Ljava/lang/String;)Z
    .locals 11

    sget-boolean v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FlipFont"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFont - checking apkname"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/samsung/android/settings/flipfont/FontListPreference;->apkNameList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    if-eqz p1, :cond_2

    sget-object v2, Lcom/samsung/android/settings/flipfont/FontListPreference;->apkNameList:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "FlipFont"

    const-string v3, "**Apk name matches list**"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FlipFont"

    const-string v2, "checkFont - check if valid certificate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v3, v3, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x40

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    const/4 v3, 0x1

    if-eqz v2, :cond_a

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v5, v4, v0

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    :try_start_1
    const-string v6, "SHA"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    aget-object v7, v4, v0

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    const-string v8, "T84drf8v3ZMOLvt2SFG/K7ODXgI="

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-boolean v8, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v8, :cond_5

    const-string v8, "FlipFont"

    const-string v9, "**Signature is correct**"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0

    :cond_6
    sget-boolean v8, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v8, :cond_7

    const-string v8, "FlipFont"

    const-string v9, "**Signature is incorrect**"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    return v3

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v7, v1

    :try_start_2
    const-string v8, "X509"

    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v8
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, v8

    goto :goto_2

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Ljava/security/cert/CertificateException;->printStackTrace()V

    :goto_2
    nop

    :try_start_3
    invoke-virtual {v7, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v8

    goto :goto_3

    :catch_3
    move-exception v8

    invoke-virtual {v8}, Ljava/security/cert/CertificateException;->printStackTrace()V

    :goto_3
    sget-boolean v8, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v8, :cond_8

    if-eqz v1, :cond_8

    const-string v8, "Example"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "APK name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "Example"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Certificate for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "Example"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Certificate issued by: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "Example"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The certificate is valid from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "Example"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Certificate SN# "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "Example"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Generated with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v8, "CN=Ed Platz, OU=Display Imaging, O=Monotype Imanging Inc., L=Woburn, ST=MA, C=US"

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v9

    invoke-interface {v9}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    sget-boolean v3, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string v3, "FlipFont"

    const-string v10, "**Certificate data is correct**"

    invoke-static {v3, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v0

    :cond_a
    return v3
.end method

.method protected dismissApp()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FlipFont"

    const-string v1, "dismissApp()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->dismissList()V

    return-void
.end method

.method protected dismissList()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FlipFont"

    const-string v1, "dismissList()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FlipFont"

    const-string v2, "dismissList() - catch (Exception ex)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected errorDialog(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/samsung/android/settings/flipfont/FontListPreference$12;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$12;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public getSavedSelectedFontStringPreference()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v2, "prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "MONOTYPE"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/flipfont/FontListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "selectedFont"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected hideList()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FlipFont"

    const-string v2, "hideList() - catch (Exception ex)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public loadPreferences()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v2, "prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "SelectDialogIsActive"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    const-string v2, "RebootDialogIsActive"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    const-string v2, "SavedClickedItem"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iget v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flip_font_style"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "flip_font_style"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "FontListPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFontStyleIndexForMultiUser() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    :goto_0
    return-void
.end method

.method public onCancelButtonPressed()V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FlipFont"

    const-string v1, "onCancelButtonPressed() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    sget-boolean v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FlipFont"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(DialogInterface dialog, int which) - which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    iget v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    if-ne p2, v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FlipFont"

    const-string v1, "onClick(DialogInterface dialog, int which) - exit "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    sget-boolean v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "FlipFont"

    const-string v1, "onClick(DialogInterface dialog, int which) after (which == mPreviousFont) "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, -0x2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_6

    sget-boolean v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "FlipFont"

    const-string v2, "onClick(DialogInterface dialog, int which) after (which == -2) "

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    iput-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->dismissApp()V

    return-void

    :cond_6
    const/4 v0, 0x0

    const/4 v2, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    iput p2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v3, v3, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->checkFont(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mCheckBadFont:Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mCheckBadFont:Z

    if-eqz v3, :cond_8

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->badFontDialog(Ljava/lang/String;)V

    return-void

    :cond_8
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p2, v4, :cond_9

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f121557

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, v5

    goto :goto_0

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f121558

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v6, :cond_a

    new-instance v6, Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v6}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v4}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPackageName:Ljava/lang/String;

    const-string v7, "FlipFont"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pkgName1:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f121f97

    new-instance v9, Lcom/samsung/android/settings/flipfont/FontListPreference$4;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$4;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f120f80

    new-instance v10, Lcom/samsung/android/settings/flipfont/FontListPreference$3;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$3;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/samsung/android/settings/flipfont/FontListPreference$5;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$5;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f121556

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    iget v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput-boolean v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    sget-boolean v3, Lcom/samsung/android/settings/flipfont/FontListPreference;->REBOOT:Z

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->RebootDialog()V

    goto :goto_1

    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->selectDialog()V

    :goto_1
    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 7

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121560

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v2, 0x14000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f121545

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    :cond_1
    return-void
.end method

.method public onOkButtonPressed()Z
    .locals 19

    move-object/from16 v7, p0

    const/4 v0, 0x0

    const-string v1, "FontListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOkButtonPressed : mClickedItem : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v3, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v7, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->checkFont(Ljava/lang/String;)Z

    move-result v2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_2

    iget v2, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput v2, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iget v4, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    sget-boolean v4, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "FlipFont"

    const-string v5, "**onOkButtonPressed - bad font**"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v8

    :cond_2
    iget v2, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    iget v2, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput v2, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    goto :goto_0

    :cond_3
    iget v2, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v2, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    :goto_0
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    iget-object v2, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v2, :cond_4

    new-instance v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v3, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    :cond_4
    iget-object v2, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget v3, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/samsung/android/settings/flipfont/FontListPreference;->saveSelectedFontStringPreferences(Ljava/lang/String;)V

    iget v2, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v2, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    new-instance v2, Lcom/samsung/android/settings/flipfont/FontWriter;

    invoke-direct {v2}, Lcom/samsung/android/settings/flipfont/FontWriter;-><init>()V

    move-object v11, v2

    if-eqz v10, :cond_c

    const-string v2, "default"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_4

    :cond_5
    iget-object v2, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    invoke-virtual {v2, v10}, Lcom/samsung/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/samsung/android/settings/flipfont/Typeface;

    move-result-object v12

    move-object v2, v10

    const-string v3, ".xml"

    invoke-virtual {v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_6

    invoke-virtual {v10, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_6
    move-object v14, v2

    iget-object v2, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v11, v2, v14}, Lcom/samsung/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    const/4 v2, 0x0

    if-eqz v12, :cond_7

    move-object v3, v1

    move v1, v0

    move v0, v8

    :goto_1
    move v6, v0

    iget-object v0, v12, Lcom/samsung/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_8

    iget-object v0, v12, Lcom/samsung/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/settings/flipfont/TypefaceFile;

    :try_start_0
    iget-object v0, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v2, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    :try_start_1
    const-string v0, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOkButtonPressed : Application name, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v3, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v3, v3, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fonts/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v5}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v15, v8, v9}, Lcom/samsung/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v9

    move v1, v9

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    nop

    move-object v3, v2

    move-object/from16 v18, v5

    move/from16 v16, v6

    goto :goto_3

    :catch_0
    move-exception v0

    move v9, v1

    move-object v8, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move v9, v1

    move-object v8, v3

    :goto_2
    invoke-virtual {v5}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v5}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v17

    move-object v1, v7

    move-object v2, v11

    move-object v3, v15

    move-object v4, v8

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move/from16 v16, v6

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/flipfont/FontListPreference;->copyFileWithCR(Lcom/samsung/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    move v1, v0

    move-object v3, v8

    :goto_3
    add-int/lit8 v0, v16, 0x1

    move-object/from16 v2, v18

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_7
    move-object v3, v1

    move v1, v0

    :cond_8
    const/4 v4, 0x1

    if-ne v1, v4, :cond_b

    iget v0, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput v0, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    if-eqz v4, :cond_9

    iget v5, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    sget-boolean v5, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v5, :cond_a

    const-string v5, "FlipFont"

    const-string v6, "**onOkButtonPressed - enospc error **"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v5, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f121912

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/samsung/android/settings/flipfont/FontListPreference;->errorDialog(Ljava/lang/String;)V

    const/4 v5, 0x0

    return v5

    :cond_b
    invoke-virtual {v7, v10}, Lcom/samsung/android/settings/flipfont/FontListPreference;->persistString(Ljava/lang/String;)Z

    iget-object v0, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v11, v0, v14}, Lcom/samsung/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    iget v0, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v0, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    iget v0, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v0, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    :try_start_2
    iget-object v0, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v4, "sans.loc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v6, v6, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget v8, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v6, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v0, v4, v5}, Lcom/samsung/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    const-string v4, "FontListPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fontWriter.writeLoc() : RuntimeException occured. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    :goto_4
    invoke-virtual {v7, v10}, Lcom/samsung/android/settings/flipfont/FontListPreference;->persistString(Ljava/lang/String;)Z

    iget-object v2, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v3, " "

    invoke-virtual {v11, v2, v3}, Lcom/samsung/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v3, "sans.loc"

    const-string v4, "default#default"

    invoke-virtual {v11, v2, v3, v4}, Lcom/samsung/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v10, :cond_d

    const-string v2, "FontListPreference"

    const-string v3, "onOkButtonPressed() : selectedFont == null "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_d
    move-object v3, v1

    move v1, v0

    :goto_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    sget-boolean v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->REBOOT:Z

    if-nez v0, :cond_12

    const-wide/16 v4, 0x64

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v4, v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_6
    :try_start_4
    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Landroid/content/res/Configuration;->FlipFont:I

    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    :goto_7
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPackageName:Ljava/lang/String;

    const-string v4, "sec_container_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput-object v0, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x1

    return v4

    :cond_e
    iget-object v0, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    iget-object v4, v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v4, 0x32

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v12, "com.android.settings"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_11

    const-string v12, "com.samsung.music"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_11

    const-string v12, "com.sec.android.app.music"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_11

    const-string v12, "com.infraware.polarisoffice"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_10

    const-string v12, "com.infraware.polarisoffice4"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_10

    const-string v12, "com.infraware.polarisviewer4"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_10

    const-string v12, "com.infraware.PolarisOfficeStdForTablet"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_10

    const-string v12, "com.infraware.polarisviewer5tablet"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_10

    const-string v12, "com.infraware.polarisoffice5tablet"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_10

    const-string v12, "com.infraware.polarisoffice4.document"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_10

    const-string v12, "com.infraware.polarisoffice5"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_10

    const-string v12, "com.infraware.polarisoffice5.document"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_10

    const-string v12, "com.infraware.polarisviewer5"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_10

    const-string v12, "com.infraware.polarisviewer5.document"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_a

    :cond_10
    :goto_9
    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    :cond_11
    :goto_a
    goto/16 :goto_8

    :cond_12
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->restartLater()V

    const/4 v4, 0x1

    return v4
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->getSavedSelectedFontStringPreference()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v1

    const v2, 0x7f121547

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f121548

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    const-string v3, "FontListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "FontListPreference"

    const-string v4, "onPrepareDialogBuilder : KEY_PREFERENCE : MONOTYPE"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MONOTYPE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "FontListPreference"

    const-string v4, "onPrepareDialogBuilder : selectedFont == KEY_PREFERENCE"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "default"

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v3, v3, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    const-string v3, "FontListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareDialogBuilder : Use Android DroidSans by default. selectedFont : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "FontListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareDialogBuilder : Android DroidSans index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v3, "FontListPreference"

    const-string v4, "onPrepareDialogBuilder : selectedFont != KEY_PREFERENCE"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v3, v3, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    const-string v3, "FontListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "FontListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareDialogBuilder : selectedFont index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    if-gez v3, :cond_2

    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {p1, v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v3, "CHM"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/samsung/android/settings/flipfont/FontListPreference;->NO_CANCEL:Z

    if-eqz v3, :cond_3

    new-instance v3, Lcom/samsung/android/settings/flipfont/FontListPreference$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$1;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_3
    new-instance v3, Lcom/samsung/android/settings/flipfont/FontListPreference$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$2;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    :goto_2
    return-void
.end method

.method public restartLater()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public restartNow()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "nowait"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "interval"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "window"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    nop

    :goto_0
    move v1, v2

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFileCopying:Z

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected savePreferences()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v2, "prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "SelectDialogIsActive"

    iget-boolean v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "RebootDialogIsActive"

    iget-boolean v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SavedClickedItem"

    iget v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flip_font_style"

    iget v5, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public saveSelectedFontStringPreferences(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v2, "prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "selectedFont"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public selectDialog()V
    .locals 9

    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->loadPreferences()V

    iget v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iget v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    const/4 v4, 0x0

    if-ge v3, v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f121557

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f121558

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v5, :cond_2

    const-string v5, ""

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    move-object v2, v5

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v2, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    sget-boolean v3, Lcom/samsung/android/settings/flipfont/FontListPreference;->NO_WARNING_DIALOG:Z

    if-eqz v3, :cond_4

    iput-boolean v4, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->onOkButtonPressed()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->dismissApp()V

    :cond_4
    sget-boolean v3, Lcom/samsung/android/settings/flipfont/FontListPreference;->REBOOT:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1040013

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f12155d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/samsung/android/settings/flipfont/FontListPreference$7;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$7;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v5, v3, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040009

    new-instance v8, Lcom/samsung/android/settings/flipfont/FontListPreference$6;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$6;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/samsung/android/settings/flipfont/FontListPreference$8;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/flipfont/FontListPreference$8;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->hideList()V

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f121556

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    iget v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v6, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FlipFont"

    const-string/jumbo v1, "showDialog  (AlertDialog.Builder builder)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mState:Landroid/os/Bundle;

    new-instance v0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;Lcom/samsung/android/settings/flipfont/FontListPreference$1;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_3

    const v0, 0x7f121555

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->setDialogTitle(I)V

    :cond_3
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->loadPreferences()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iput-boolean v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->selectDialog()V

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    iput-boolean v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->RebootDialog()V

    :cond_5
    return-void
.end method
