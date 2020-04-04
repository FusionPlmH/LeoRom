.class public Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;
.super Ljava/lang/Object;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WallpaperBackupRestoreManager"

    const-string v2, "close fail "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static copyBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    nop

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    nop

    return v1

    :goto_2
    invoke-static {v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    throw v3
.end method

.method public static copyEncryptBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    invoke-static {v3, p2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->encryptStream(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v4

    move-object v2, v4

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    nop

    return v1

    :goto_1
    invoke-static {v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    throw v4
.end method

.method public static copyEncryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    const-string v0, "WallpaperBackupRestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyEncryptFile sourceImagePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " destImagePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v8

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v8

    invoke-static {v5, p2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->encryptStream(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v8

    move-object v6, v8

    const/4 v8, 0x0

    const/16 v9, 0x400

    new-array v10, v9, [B

    :goto_0
    invoke-virtual {v4, v10, v7, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v11

    move v8, v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    invoke-virtual {v6, v10, v7, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    invoke-static {v4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    return v7

    :catchall_0
    move-exception v7

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    return v7

    :goto_1
    invoke-static {v4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    throw v7
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v7

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    move-object v5, v7

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    move-object v6, v7

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v9, 0x0

    move-object v8, v5

    move-object v13, v6

    :try_start_1
    invoke-virtual/range {v8 .. v13}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    invoke-static {v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    return v1

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-wide v1, v11

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v7, v1

    move-wide v1, v11

    goto :goto_0

    :catchall_1
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    :goto_0
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v8, 0x0

    invoke-static {v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    return v8

    :goto_1
    invoke-static {v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    throw v7
.end method

.method public static decryptStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/16 v4, 0x10

    new-array v4, v4, [B

    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    invoke-static {v4, p1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->generatePBKDF2SecretKey([BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v6, Ljavax/crypto/CipherInputStream;

    invoke-direct {v6, p0, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static encryptStream(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WallpaperBackupRestoreManager"

    const-string/jumbo v1, "sessionKey is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    nop

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v2, v2, [B

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-static {}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->generateEncryptSalt()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v4, p1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->generatePBKDF2SecretKey([BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v6, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v6, p0, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public static generateEncryptSalt()[B
    .locals 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v1
.end method

.method public static generatePBKDF2SecretKey([BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 10

    const/16 v0, 0x3e8

    const/16 v1, 0x100

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "PBKDF2WithHmacSHA1"

    invoke-static {v4}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v5, v2, p0, v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v4, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v6

    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v8

    const-string v9, "AES"

    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v7

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :goto_1
    return-object v3
.end method

.method public static isExist(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
