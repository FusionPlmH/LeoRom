.class public Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "StorageSDCardEncryptionWarnDialog.java"


# static fields
.field private static mSDCardEncryptionWarnDialog:Landroid/app/AlertDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mSDCardEncryptionWarnDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;)Landroid/os/storage/VolumeInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method private showProceedDialog()V
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mSDCardEncryptionWarnDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mSDCardEncryptionWarnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mSDCardEncryptionWarnDialog:Landroid/app/AlertDialog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f121656

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f121657

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const v1, 0x7f121654

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f121655

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f121658

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f121659

    new-instance v3, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$4;-><init>(Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$3;-><init>(Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120475

    new-instance v3, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$2;-><init>(Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f121653

    new-instance v3, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$1;-><init>(Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mSDCardEncryptionWarnDialog:Landroid/app/AlertDialog;

    sget-object v1, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mSDCardEncryptionWarnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "StorageSettings"

    const-string v3, "EXTRA_VOLUME_ID is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->showProceedDialog()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->setupAlert()V

    goto :goto_0

    :cond_1
    const-string v2, "StorageSettings"

    const-string v3, "VolumeInfo ID is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
