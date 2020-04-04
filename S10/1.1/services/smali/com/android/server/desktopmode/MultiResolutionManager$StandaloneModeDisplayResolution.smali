.class Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;
.super Ljava/lang/Object;
.source "MultiResolutionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/MultiResolutionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StandaloneModeDisplayResolution"
.end annotation


# instance fields
.field private mSelectedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private final mTabletDefaultResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field final synthetic this$0:Lcom/android/server/desktopmode/MultiResolutionManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/MultiResolutionManager;)V
    .locals 5

    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$1100(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerInternal;->getInitialDisplayProperties(I)[I

    move-result-object p1

    new-instance v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v2, "Tablet"

    aget v0, p1, v0

    const/4 v3, 0x1

    aget v3, p1, v3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->getDesktopModeDefaultDensity([I)I

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;III)V

    iput-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->mTabletDefaultResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->mTabletDefaultResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->mSelectedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;I)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->getOriginalDisplaySizeDensity(I)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->setForcedDisplayResolutionDensity(Z)V

    return-void
.end method

.method private getDesktopModeDefaultDensity([I)I
    .locals 2

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0xa00

    if-ge v0, v1, :cond_0

    const/16 v1, 0xd5

    goto :goto_0

    :cond_0
    const/16 v1, 0x118

    :goto_0
    return v1
.end method

.method private getOriginalDisplaySizeDensity(I)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    .locals 8

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$1100(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getInitialDisplayProperties(I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$1300(Lcom/android/server/desktopmode/MultiResolutionManager;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "display_size_forced"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ne v4, v5, :cond_1

    :try_start_0
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v4, :cond_0

    if-lez v6, :cond_0

    aput v4, v0, v3

    aput v6, v0, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v4

    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Failed to parse previous forced display size"

    invoke-static {v6, v7, v4}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "No previous forced display size. Use default size instead."

    invoke-static {v4, v5}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    const/4 v4, 0x2

    :try_start_1
    iget-object v5, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v5}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$1300(Lcom/android/server/desktopmode/MultiResolutionManager;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "display_density_forced"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_4

    aput v5, v0, v4
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    goto :goto_2

    :catch_1
    move-exception v5

    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "No previous forced display density. Use default density instead."

    invoke-static {v6, v7}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    new-instance v5, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v6, "Original"

    aget v3, v0, v3

    aget v2, v0, v2

    aget v4, v0, v4

    invoke-direct {v5, v6, v3, v2, v4}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;III)V

    return-object v5
.end method

.method private restoreOriginalSizeDensity(I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->getOriginalDisplaySizeDensity(I)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iget v2, v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iget v3, v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->setSamsungWindowManagerForcedDisplaySizeDensity(IIII)V

    return-void
.end method

.method private setForcedDisplayResolutionDensity(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->getSelectedResolution()Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v1

    iget v2, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iget v3, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iget v4, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->setSamsungWindowManagerForcedDisplaySizeDensity(IIII)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->restoreOriginalSizeDensity(I)V

    :goto_0
    return-void
.end method

.method private setSamsungWindowManagerForcedDisplaySizeDensity(IIII)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$1400(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeDensity(IIIIZZ)V

    return-void
.end method


# virtual methods
.method getSelectedResolution()Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$1200(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->access$1200(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->mSelectedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(mTabletDefaultResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->mTabletDefaultResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSelectedResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->mSelectedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
