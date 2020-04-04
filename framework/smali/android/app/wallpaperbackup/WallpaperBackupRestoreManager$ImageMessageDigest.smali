.class public Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ImageMessageDigest;
.super Ljava/lang/Object;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageMessageDigest"
.end annotation


# static fields
.field public static PRELOAD_WALLPAPER_HASH_CODE:[Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "WallpaperBackupRestoreManager.ImageMessageDigest"


# direct methods
.method static constructor <clinit>()V
    .locals 54

    const-string v0, "74fa4ae909501784073f6bafe11c1bc36aee5d84afb5455a1e2c924b269e5c28"

    const-string v1, "095cf9af495104cb725a661c5db482b9698b10161447025be4995791eca599b9"

    const-string v2, "3ee79073376def25c5181da4c07b636f629613d40859af6958e1f83b0075a43b"

    const-string v3, "bba1a8976947d3825a607cfc626ef2ac3255b7885d84408c4473e4b336a190e5"

    const-string v4, "eba03bb6802948da3f985e8b237f2f999b1a98a01d151ce4116b61b40e6e048e"

    const-string v5, "93e835b9bc887bc61aaf8883b7e5075518a3f70eba29b5fc225a72d171afa199"

    const-string v6, "10194bfe3cc4dee41c169b171f762579ee64647856589fde5b087e07191a7432"

    const-string v7, "c6730a10280c59da836770639788869a74ba31c13696a7ba96568e75c2708552"

    const-string v8, "cd5baf0520b7ac40eb3020a57aded338d285a7bc6edcc32f3e3076cd829c9bbc"

    const-string v9, "fc661722188e1ee64c2bdcea03ac4a432586899588433e10b2667cafefa7da75"

    const-string v10, "e7e3baebb6417be9e6146daeddc5f6942a497c8c3bbf728e96e957d29a341fc1"

    const-string v11, "46ea0809d1eb98b140a09fb3509c0d91b7fc904914983d4444d5cbecec3864bb"

    const-string v12, "02f2bcc68c05732a7098182befad453bbeb8a1f4aabbbb956cf9212574b82959"

    const-string v13, "c927d2f1b5c0a79898ebb7ffd23d0de1d6badf6342971f658b2ed153b5cbec0f"

    const-string v14, "ac3b9947654a601c6ed20dbe15b16996d89bdcc023507191637052a36c48b9b8"

    const-string v15, "5fbf505d04fb6591e6705b90e591638046f7168a43d06721fdafd45faf1bbc91"

    const-string v16, "2fa1fcf389976547c58eb9513c3b4e29644de8e6235cce1e8cef189123b0e0ca"

    const-string v17, "9b364f03b9d4d12c49f28d114273da5fce95c3b07b9abfaf1a3e899868fc2766"

    const-string v18, "78a9ef2b22fda8c75438257a52a2ffffd2dcd6b8f467c2f28020b7826511f984"

    const-string v19, "c8da6d1f583872bb44535d6d18430040927c3026893bd254826e158dc16dd151"

    const-string v20, "46bb1e77dbef434f43eb984ae78b7352d54969e7a51c1a7d6d6af1d058e3ed20"

    const-string v21, "6543525e66dfe89193a7b7ad6bfb531a677573a0315ebe3c323e4cdce3217022"

    const-string v22, "74591f92c311fda9e443dc1297ee90f8c3bb8ef62f4246b192a89f06aed9c67b"

    const-string v23, "8495fc99eafbd5b10e84510729f6d5eba0523a3ecd342f0088f17183db225543"

    const-string v24, "c6b59a9647916b5600c7d5a8f4a3551ec5a33e9ee4064585b82f6922cc9c7d8a"

    const-string v25, "f77deff234065913429e438192a6300aedce7478ed8b07d4fe1de0f2fdd00183"

    const-string v26, "2a639f883885c2927b70838e43545b9a2b1d35626c83ce358f35bc5f18495cd2"

    const-string v27, "259d3e56d233713d558b9f6157b01bfb33f6874ec3f17da5ba0fae51e2e2c3cc"

    const-string v28, "e79da264bdf3dfcb4e8744dd82f8540b418e3c2247ead091f9cac38bb1054947"

    const-string v29, "66f61e605e6057be5682e4a1881f1b5e35dcc95808153bdde84ce38537837788"

    const-string v30, "2b04eb42e62ca0f9cdbee951a4929d7bb4e37e702bab9354d13d3b5c8ef2dd0c"

    const-string v31, "44d07c4739f5a92d662948700d7c56c59a4af06ce3e82f14403ef3a9df62410b"

    const-string v32, "470cdc9960009853f9e8d3c85d8c409c2fd4916e3c73820095a504fc905ea6ae"

    const-string v33, "f9be2e7225588b69519408795ca836f8d75a50f3ef90e050fa855907c2fea866"

    const-string v34, "947b331d2829b6a09f58f7827515d47d0f112973b41ec4a8b3c54001aa11911f"

    const-string v35, "4ef1846dea90184c92a9d6a188789d4f8b57c8d790b87a5270622ee89f9e6869"

    const-string v36, "a16a74d0987b472dac5da6cbb1268e7a5e9f537d7385cf1e4ea93f750509c797"

    const-string v37, "12e8250dd6a446678a84620bc494a254beae6cf4dbf2ac70a11b5af74099bc8f"

    const-string v38, "0a3da95017a45345831e9e2013ea693e112b2bc349f63ff5a41352696d65c487"

    const-string v39, "2a330816aa733cff25185d090c5397e0318acaa907bed24cc515248e62ada73e"

    const-string v40, "8846a1f83e852aa693314d2ae3788ea1b718d5595b2e5a816085fff6857de785"

    const-string v41, "512b6c9956fc577c439497bb3edfd7b751a4d06509d367ac2447fa66797af07b"

    const-string v42, "1bd8efb42ef50c0961a800a281981ebc1f137df94345b90af411ab1082a0b9c6"

    const-string v43, "b4722ec30ce12b04cec1f168a7c649f54a4f46427c3b56094158042d4b72814b"

    const-string v44, "6bcd30e7659b2f7c5f7d1fdfc3b03debe982c10adb883ffcf91dabacc1ae20bb"

    const-string v45, "80590550cb60f931b4a979852ac1bcc8d531d6d002b1f87dcb0fd15bd712a51d"

    const-string v46, "3eeaea57b567bdd3761938f9ea01811c328c3965485394297ed62d9b21765e56"

    const-string v47, "d89db3901f585501124f762e849277a60d4fa5d7159f6e96fba2fd64b585b205"

    const-string v48, "4253c1cdea900283a4b139f2f8dada4c193191c7bbed9db1079a03e007ef4bd9"

    const-string v49, "95f0371ded7587f63f85ede3f60a5531f3b975e2390a018c2480176d724c6916"

    const-string v50, "ebe5625452ba67d5d42f2ed8b2e1eb6127a9eea9ef7745940017cf7a6ba6d753"

    const-string v51, "9f8aaeab62dafb74891035101efa2c6f7ef45553446efba10010b5200578f1d7"

    const-string v52, "a8fefe941f7d3658ffa67390485a70cbff306fc84924654587507ed767b03fc7"

    const-string v53, "8ea921fc00744100c34201b8e94247fea1186604392aeef79394a8ce97657bc4"

    filled-new-array/range {v0 .. v53}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ImageMessageDigest;->PRELOAD_WALLPAPER_HASH_CODE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getByte(Landroid/graphics/Bitmap;)[B
    .locals 3

    if-nez p0, :cond_0

    const-string v0, "WallpaperBackupRestoreManager.ImageMessageDigest"

    const-string v1, "getByte(), fail to get the byte of bitmap. it is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public static getHashCode(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 8

    const-string v0, "WallpaperBackupRestoreManager.ImageMessageDigest"

    const-string v1, "getHashCode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ImageMessageDigest;->getByte(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    const-string v1, ""

    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x0

    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_0

    aget-byte v6, v3, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit16 v6, v6, 0x100

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v1, 0x0

    :goto_1
    const-string v2, "WallpaperBackupRestoreManager.ImageMessageDigest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HashCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static isCustomWallpaper(Landroid/graphics/Bitmap;)Z
    .locals 7

    const-string v0, "WallpaperBackupRestoreManager.ImageMessageDigest"

    const-string v1, "isPreloadWallpaper()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ImageMessageDigest;->getHashCode(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ImageMessageDigest;->PRELOAD_WALLPAPER_HASH_CODE:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v1, "WallpaperBackupRestoreManager.ImageMessageDigest"

    const-string v2, "Preload wallpaper."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "WallpaperBackupRestoreManager.ImageMessageDigest"

    const-string v2, "custom wallpaper."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1
.end method
