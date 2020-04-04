.class Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;
.super Ljava/lang/Object;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreWallpaperInfo"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field context:Landroid/content/Context;

.field nextHelper:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

.field result:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

.field successResultCode:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

.field final synthetic this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

.field wallpaperData:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;

.field which:I


# direct methods
.method constructor <init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;ILandroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;-><init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;ILandroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)V

    return-void
.end method

.method constructor <init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;ILandroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)V
    .locals 0

    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;->context:Landroid/content/Context;

    iput-object p3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;->bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;->wallpaperData:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;

    iput p5, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;->which:I

    iput-object p6, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;->successResultCode:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    iput-object p7, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;->nextHelper:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    return-void
.end method


# virtual methods
.method setResult(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V
    .locals 0

    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;->result:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    return-void
.end method
