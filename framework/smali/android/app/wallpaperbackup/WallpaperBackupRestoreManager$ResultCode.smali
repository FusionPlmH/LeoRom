.class final enum Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
.super Ljava/lang/Enum;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

.field public static final enum INVALID_VALUE:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

.field public static final enum RESULT_CROPPED_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

.field public static final enum RESULT_DEX_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

.field public static final enum RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

.field public static final enum RESULT_ORIGINAL_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

.field public static final enum RESULT_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const-string v1, "INVALID_VALUE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->INVALID_VALUE:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const-string v1, "RESULT_SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const-string v1, "RESULT_FAIL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const-string v1, "RESULT_CROPPED_SUCCESS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_CROPPED_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const-string v1, "RESULT_ORIGINAL_SUCCESS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_ORIGINAL_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const-string v1, "RESULT_DEX_SUCCESS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_DEX_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->INVALID_VALUE:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    aput-object v1, v0, v4

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_CROPPED_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    aput-object v1, v0, v5

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_ORIGINAL_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    aput-object v1, v0, v6

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_DEX_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    aput-object v1, v0, v7

    sput-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->$VALUES:[Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

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

    iput p3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    .locals 1

    const-class v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    return-object v0
.end method

.method public static values()[Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    .locals 1

    sget-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->$VALUES:[Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {v0}, [Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->code:I

    return v0
.end method
