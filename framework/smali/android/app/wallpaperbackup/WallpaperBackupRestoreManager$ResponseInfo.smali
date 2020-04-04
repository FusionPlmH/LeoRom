.class Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;
.super Ljava/lang/Object;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResponseInfo"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private errorCode:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

.field private mExtraResultCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;",
            ">;"
        }
    .end annotation
.end field

.field private requiredSize:I

.field private resultCode:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

.field private sessionTime:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field final synthetic this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

.field private which:I


# direct methods
.method constructor <init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->mExtraResultCodes:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->context:Landroid/content/Context;

    iput-object p3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->action:Ljava/lang/String;

    iput p4, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->requiredSize:I

    iput-object p5, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->source:Ljava/lang/String;

    iput-object p6, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->sessionTime:Ljava/lang/String;

    sget-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    iput-object v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->resultCode:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    sget-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    iput-object v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->errorCode:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    return-void
.end method

.method static synthetic access$300(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->addResult(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    return-void
.end method

.method static synthetic access$602(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;I)I
    .locals 0

    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->which:I

    return p1
.end method

.method private addResult(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V
    .locals 3

    const-string v0, "WallpaperBackupRestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addFileSaveResult, code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->mExtraResultCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->sendResponseIfNeed()V

    return-void
.end method

.method private sendResponseIfNeed()V
    .locals 15

    const-string v0, "WallpaperBackupRestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mExtraResultCodes.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->mExtraResultCodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->mExtraResultCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->access$000()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->mExtraResultCodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    sget-object v3, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {v2, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    goto :goto_0

    :cond_2
    const-string v1, "WallpaperBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "successCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    iput-object v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->resultCode:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->INVALID_DATA:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    iput-object v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->errorCode:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->mExtraResultCodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->PARTIAL_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    iput-object v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->errorCode:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    :cond_4
    :goto_1
    const-string v1, ""

    iget-object v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    iget-object v3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->action:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->access$100(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, -0x2

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->resultCode:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    sget-object v4, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {v2, v4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->which:I

    and-int/lit8 v2, v2, 0x1c

    const/16 v4, 0x8

    const/4 v5, 0x2

    if-eq v2, v4, :cond_6

    const/16 v4, 0x10

    if-eq v2, v4, :cond_5

    const-string v1, "android.wallpaper.settings_systemui_transparency"

    iget v4, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->which:I

    and-int/lit8 v4, v4, 0x3

    if-ne v4, v5, :cond_7

    const-string/jumbo v1, "lockscreen_wallpaper_transparent"

    iget-object v4, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "lockscreen_wallpaper"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2

    :cond_5
    const-string/jumbo v1, "sub_display_system_wallpaper_transparency"

    iget v4, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->which:I

    and-int/lit8 v4, v4, 0x3

    if-ne v4, v5, :cond_7

    const-string/jumbo v1, "sub_display_lockscreen_wallpaper_transparency"

    goto :goto_2

    :cond_6
    const-string v1, "dex_system_wallpaper_transparency"

    iget v4, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->which:I

    and-int/lit8 v4, v4, 0x3

    if-ne v4, v5, :cond_7

    const-string v1, "dex_lockscreen_wallpaper_transparency"

    :cond_7
    :goto_2
    iget-object v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v5, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    iget-object v6, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->context:Landroid/content/Context;

    iget v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->which:I

    and-int/lit8 v7, v2, 0x1c

    iget-object v8, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->action:Ljava/lang/String;

    iget-object v9, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->resultCode:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    iget-object v10, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->errorCode:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    iget v11, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->requiredSize:I

    iget-object v12, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->source:Ljava/lang/String;

    iget-object v13, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->sessionTime:Ljava/lang/String;

    iget-object v14, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->mExtraResultCodes:Ljava/util/ArrayList;

    invoke-static/range {v5 .. v14}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->access$200(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
