.class Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;
.super Ljava/lang/Object;
.source "UiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/UiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DockTaWarningDialogMessage"
.end annotation


# instance fields
.field private mFastChargerDialogCommand:Ljava/lang/Runnable;

.field private mNotFastChargerDialogCommand:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;->mFastChargerDialogCommand:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;->mNotFastChargerDialogCommand:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/UiManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;->mFastChargerDialogCommand:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;->mFastChargerDialogCommand:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;->mFastChargerDialogCommand:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;->mNotFastChargerDialogCommand:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;->mNotFastChargerDialogCommand:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1
    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;->mNotFastChargerDialogCommand:Ljava/lang/Runnable;

    return-void
.end method

.method setCommand(ILjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;->mFastChargerDialogCommand:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iput-object p2, p0, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;->mNotFastChargerDialogCommand:Ljava/lang/Runnable;

    :cond_1
    :goto_0
    return-void
.end method
