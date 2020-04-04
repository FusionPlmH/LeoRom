.class Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;
.super Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OriginalWallpaperBNRHelper"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperBackupRestoreManager.OriginalWallpaperBNRHelper"


# instance fields
.field final synthetic this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;


# direct methods
.method constructor <init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;)V
    .locals 0

    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct/range {p0 .. p7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;-><init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;)V

    invoke-static {p7, p3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->access$602(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;I)I

    return-void
.end method

.method private getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return p3

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getOriginalImageFilePath()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mWhich:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/data/com.android.systemui/files/backupwallpapers/original_file_home.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/data/com.android.systemui/files/backupwallpapers/original_file_lock.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOriginalXmlFilePath()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mWhich:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/data/com.android.systemui/files/backupwallpapers/backup_home.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/data/com.android.systemui/files/backupwallpapers/backup_lock.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadSettingsLocked()Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .locals 11

    const-string v0, "WallpaperBackupRestoreManager.OriginalWallpaperBNRHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadSettingsLocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mWhich:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->getOriginalXmlFilePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v6

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v7, v8, :cond_3

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    if-nez v4, :cond_1

    new-instance v10, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;

    invoke-direct {v10}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;-><init>()V

    move-object v4, v10

    :cond_1
    iget v10, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mWhich:I

    if-ne v10, v9, :cond_2

    const-string v10, "hw"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-direct {p0, v6, v4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v10, "lw"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-direct {p0, v6, v4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    if-ne v7, v9, :cond_0

    const/4 v5, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v6

    const-string v7, "WallpaperBackupRestoreManager.OriginalWallpaperBNRHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed parsing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_1
    move-exception v6

    const-string v7, "WallpaperBackupRestoreManager.OriginalWallpaperBNRHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed parsing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v6

    const-string v7, "WallpaperBackupRestoreManager.OriginalWallpaperBNRHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed parsing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v6

    const-string v7, "WallpaperBackupRestoreManager.OriginalWallpaperBNRHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed parsing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_4
    move-exception v6

    const-string v7, "WallpaperBackupRestoreManager.OriginalWallpaperBNRHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed parsing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_5
    move-exception v6

    const-string v7, "WallpaperBackupRestoreManager.OriginalWallpaperBNRHelper"

    const-string/jumbo v8, "no current wallpaper"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    nop

    :goto_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_4
    if-eqz v5, :cond_5

    const-string v6, "WallpaperBackupRestoreManager.OriginalWallpaperBNRHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "success parsing xml. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mWhich:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_5
    const/4 v6, 0x0

    return-object v6
.end method

.method private parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;)V
    .locals 2

    const-string/jumbo v0, "left"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->left:I

    const-string/jumbo v0, "top"

    invoke-direct {p0, p1, v0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->top:I

    const-string/jumbo v0, "right"

    invoke-direct {p0, p1, v0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->right:I

    const-string v0, "bottom"

    invoke-direct {p0, p1, v0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->bottom:I

    const-string/jumbo v0, "rotation"

    invoke-direct {p0, p1, v0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->rotation:I

    return-void
.end method

.method private writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "left"

    iget v2, p3, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "top"

    iget v2, p3, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "right"

    iget v2, p3, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "bottom"

    iget v2, p3, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->bottom:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "rotation"

    iget v2, p3, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->rotation:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method backupWallpaperFile(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->canBackup()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "WallpaperBackupRestoreManager.OriginalWallpaperBNRHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backupWallpaperFile(), imagePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mWhich:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->getOriginalImageFilePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "WallpaperBackupRestoreManager.OriginalWallpaperBNRHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "original image file exists. which = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mWhich:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mSecurityLevel:I

    if-nez v3, :cond_0

    invoke-static {v1, p1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mSecurityLevel:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mSaveKey:Ljava/lang/String;

    invoke-static {v1, p1, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->copyEncryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v3, "WallpaperBackupRestoreManager.OriginalWallpaperBNRHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "original image file does not exists. which = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mWhich:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const-string v1, "WallpaperBackupRestoreManager.OriginalWallpaperBNRHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backupWallpaperFile, success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_ORIGINAL_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    goto :goto_1

    :cond_3
    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    :goto_1
    invoke-virtual {p0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->onComplete(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    return-void
.end method

.method backupWallpaperXmlFile()V
    .locals 5

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperUser;

    invoke-direct {v0}, Landroid/app/wallpaperbackup/WallpaperUser;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->getImageFilePath(Landroid/app/wallpaperbackup/WallpaperUser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUser;->setPath(Ljava/lang/String;)V

    iget v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mWhich:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->access$500(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    iget-object v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->getTiltSettingValue(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUser;->setTiltSettingValue(I)V

    :cond_0
    invoke-direct {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->loadSettingsLocked()Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->left:I

    invoke-virtual {v0, v2}, Landroid/app/wallpaperbackup/WallpaperUser;->setLeftValue(I)V

    iget v2, v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->top:I

    invoke-virtual {v0, v2}, Landroid/app/wallpaperbackup/WallpaperUser;->setTopValue(I)V

    iget v2, v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->right:I

    invoke-virtual {v0, v2}, Landroid/app/wallpaperbackup/WallpaperUser;->setRightValue(I)V

    iget v2, v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->bottom:I

    invoke-virtual {v0, v2}, Landroid/app/wallpaperbackup/WallpaperUser;->setBottomValue(I)V

    iget v2, v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->rotation:I

    invoke-virtual {v0, v2}, Landroid/app/wallpaperbackup/WallpaperUser;->setRotationValue(I)V

    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->getXmlFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mWhich:I

    invoke-static {v2, v3, v0}, Landroid/app/wallpaperbackup/GenerateXML;->generateXML(Ljava/io/File;ILandroid/app/wallpaperbackup/WallpaperUser;)V

    return-void
.end method

.method getImageFilePath(Landroid/app/wallpaperbackup/WallpaperUser;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/wallpaperbackup/WallpaperUser;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mWhich:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string/jumbo v0, "wallpaper_original/lockscreen_wallpaper.jpg"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "wallpaper_original/wallpaper.png"

    :cond_2
    :goto_0
    const-string v1, "WallpaperBackupRestoreManager.OriginalWallpaperBNRHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImageFilePath(), path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method getXmlFilePath()Ljava/lang/String;
    .locals 4

    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mWhich:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "lockscreen_original.xml"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "wallpaper_original.xml"

    :goto_0
    const-string v1, "WallpaperBackupRestoreManager.OriginalWallpaperBNRHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getXmlFilePath(), path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method protected parseWallpaperUserData(Landroid/app/wallpaperbackup/WallpaperUser;)Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .locals 4

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;

    invoke-direct {v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/wallpaperbackup/WallpaperUser;->getLeftValue()I

    move-result v1

    iput v1, v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->left:I

    invoke-virtual {p1}, Landroid/app/wallpaperbackup/WallpaperUser;->getTopValue()I

    move-result v1

    iput v1, v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->top:I

    invoke-virtual {p1}, Landroid/app/wallpaperbackup/WallpaperUser;->getRightValue()I

    move-result v1

    iput v1, v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->right:I

    invoke-virtual {p1}, Landroid/app/wallpaperbackup/WallpaperUser;->getBottomValue()I

    move-result v1

    iput v1, v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->bottom:I

    invoke-virtual {p1}, Landroid/app/wallpaperbackup/WallpaperUser;->getRotationValue()I

    move-result v1

    iput v1, v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->rotation:I

    goto :goto_0

    :cond_0
    const-string v1, "WallpaperBackupRestoreManager.OriginalWallpaperBNRHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item value is null. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mWhich:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method restoreWallpaperFile(Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;)V
    .locals 11

    invoke-virtual {p0, p1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->getBitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;

    iget-object v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    iget-object v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mWhich:I

    iget-object v4, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    iget v5, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mSecurityLevel:I

    iget-object v6, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mSaveKey:Ljava/lang/String;

    iget-object v7, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mResponseInfo:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;-><init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;)V

    if-nez v8, :cond_0

    sget-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {p0, v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->onComplete(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    invoke-virtual {v9}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->startRestore()V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->updateFileIfNeed(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;)V

    new-instance v10, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;

    iget-object v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    iget-object v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mWhich:I

    sget-object v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_ORIGINAL_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    move-object v0, v10

    move-object v3, v8

    move-object v4, p2

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;-><init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;ILandroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)V

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_ORIGINAL_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->restoreWallpaperFileInternal(Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;)V

    return-void
.end method

.method protected saveSettingsLocked(ILandroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;)V
    .locals 9

    const-string v0, "WallpaperBackupRestoreManager.OriginalWallpaperBNRHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveSettingsLocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->getOriginalXmlFilePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    :try_start_0
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v2, v6

    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v6

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz p2, :cond_1

    if-ne p1, v6, :cond_0

    const-string v3, "hw"

    invoke-direct {p0, v5, v3, p2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "lw"

    invoke-direct {p0, v5, v3, p2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;)V

    :cond_1
    :goto_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    :goto_1
    return-void
.end method

.method protected updateFileIfNeed(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;)V
    .locals 6

    const-string v0, "WallpaperBackupRestoreManager.OriginalWallpaperBNRHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFileIfNeed(), updateProcess which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mWhich:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->getImageFilePath(Landroid/app/wallpaperbackup/WallpaperUser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->getOriginalXmlFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->getOriginalImageFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "WallpaperBackupRestoreManager.OriginalWallpaperBNRHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateFileIfNeed(), \n  sourceImagePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n  destImagePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n  destXmlPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    iget v3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mWhich:I

    invoke-virtual {p0, v3, p1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->saveSettingsLocked(ILandroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;)V

    goto :goto_1

    :cond_2
    const-string v3, "WallpaperBackupRestoreManager.OriginalWallpaperBNRHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "original image file does not exists. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;->mWhich:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
