.class final enum Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;
.super Ljava/lang/Enum;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

.field public static final enum INVALID_DATA:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

.field public static final enum PARTIAL_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

.field public static final enum STORAGE_FULL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

.field public static final enum SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

.field public static final enum UNKNOWN_ERROR:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    const-string v1, "STORAGE_FULL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->STORAGE_FULL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    const-string v1, "INVALID_DATA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->INVALID_DATA:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    const-string v1, "PARTIAL_SUCCESS"

    const/4 v6, 0x4

    const/4 v7, 0x7

    invoke-direct {v0, v1, v6, v7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->PARTIAL_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->STORAGE_FULL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->INVALID_DATA:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->PARTIAL_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    aput-object v1, v0, v6

    sput-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->$VALUES:[Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;
    .locals 1

    const-class v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    return-object v0
.end method

.method public static values()[Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;
    .locals 1

    sget-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->$VALUES:[Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    invoke-virtual {v0}, [Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->code:I

    return v0
.end method
