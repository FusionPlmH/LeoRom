.class Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaveInfo;
.super Ljava/lang/Object;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileSaveInfo"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field filePath:Ljava/lang/String;

.field key:Ljava/lang/String;

.field successResultCode:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

.field final synthetic this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;


# direct methods
.method constructor <init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V
    .locals 0

    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaveInfo;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaveInfo;->filePath:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaveInfo;->bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaveInfo;->key:Ljava/lang/String;

    iput-object p5, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaveInfo;->successResultCode:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    return-void
.end method
