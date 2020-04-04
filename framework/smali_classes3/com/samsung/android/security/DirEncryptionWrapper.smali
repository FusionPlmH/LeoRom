.class public Lcom/samsung/android/security/DirEncryptionWrapper;
.super Ljava/lang/Object;
.source "DirEncryptionWrapper.java"


# static fields
.field private static final LOCAL_LOGD:Z

.field private static final LOCAL_LOGE:Z

.field private static final TAG:Ljava/lang/String; = "DirEncryptWrapper"

.field private static mExternalSDvolFsUuid:Ljava/lang/String;

.field private static mExternalSDvolId:Ljava/lang/String;

.field private static mExternalSDvolState:Ljava/lang/String;

.field private static mSavedUserId:I

.field private static mUserDiff:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMountService:Landroid/os/storage/IStorageManager;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->LOCAL_LOGE:Z

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->LOCAL_LOGD:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mUserDiff:Z

    sput v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mSavedUserId:I

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolId:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolFsUuid:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolState:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IStorageManager;

    iput-object p1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getVolumeInfo()Landroid/os/storage/VolumeInfo;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private static logD(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptWrapper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static logE(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->LOCAL_LOGE:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptWrapper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getActivePasswordQuality()I
    .locals 2

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    return v1
.end method

.method public getCurrentUserID()I
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public getExternalSDvolFsUuid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolFsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalSDvolId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolId:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalSDvolState()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolState:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalSdPath()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 2

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    return v1
.end method

.method public getMountService()Landroid/os/storage/IStorageManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IStorageManager;

    if-nez v0, :cond_1

    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IStorageManager;

    goto :goto_0

    :cond_0
    const-string v1, "Can\'t get mount service"

    invoke-static {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->logD(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IStorageManager;

    return-object v0
.end method

.method public getSavedUserID()I
    .locals 1

    sget v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mSavedUserId:I

    return v0
.end method

.method public getUserDiff()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mUserDiff:Z

    return v0
.end method

.method public getVolumeState()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    invoke-static {v0}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isExternalSDRemovable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSecure()Z
    .locals 2

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    return v1
.end method

.method public mountVolume()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public registerStorageEventListener(Landroid/os/storage/StorageEventListener;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "storage"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public setExternalSDvolFsUuid(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolFsUuid:Ljava/lang/String;

    return-void
.end method

.method public setExternalSDvolId(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolId:Ljava/lang/String;

    return-void
.end method

.method public setExternalSDvolState(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolState:Ljava/lang/String;

    return-void
.end method

.method public setSavedUserID(I)V
    .locals 0

    sput p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mSavedUserId:I

    return-void
.end method

.method public setUserDiff(Z)V
    .locals 0

    sput-boolean p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mUserDiff:Z

    return-void
.end method

.method public unmountHiddenVolume()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->unmount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public unmountVolume()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->unmount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public unmountVolumeByDiffUser()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sput-boolean v2, Lcom/samsung/android/security/DirEncryptionWrapper;->mUserDiff:Z

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountVolume()Z

    move-result v1

    return v1

    :cond_0
    const-string v1, "HiddenMount"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput-boolean v2, Lcom/samsung/android/security/DirEncryptionWrapper;->mUserDiff:Z

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountHiddenVolume()Z

    move-result v1

    return v1

    :cond_1
    const-string/jumbo v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "bad_removal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->mountVolume()Z

    move-result v1

    return v1

    :cond_3
    const/4 v1, 0x0

    return v1
.end method
