.class Lcom/android/server/desktopmode/DualModeChanger$1;
.super Lcom/android/server/desktopmode/UiManager$InternalUiCallback;
.source "DualModeChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DualModeChanger;->showSecuredAppLaunchedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DualModeChanger;

.field final synthetic val$state:Lcom/android/server/desktopmode/State;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$1;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iput-object p2, p0, Lcom/android/server/desktopmode/DualModeChanger$1;->val$state:Lcom/android/server/desktopmode/State;

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onClickButtonNegative()V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onClickButtonNegative()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger$1;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v3, p0, Lcom/android/server/desktopmode/DualModeChanger$1;->val$state:Lcom/android/server/desktopmode/State;

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DualModeChanger;->access$400(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger$1;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v2, v2, Lcom/android/server/desktopmode/DualModeChanger;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "secured_app_dialog_shown"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void
.end method
