.class public Lcom/android/systemui/indexsearch/DetailPanelLaunchActivity;
.super Landroid/app/Activity;
.source "DetailPanelLaunchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/indexsearch/DetailPanelLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "tileSpec"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/indexsearch/DetailPanelLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2, v3}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanelWithQs()V

    const-string v3, "DetailPanelLaunchActivity"

    const-string/jumbo v4, "open Quick panel"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandSettingsPanel(Ljava/lang/String;)V

    const-string v3, "DetailPanelLaunchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "open Quick panel with detail :: tileSpec = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/indexsearch/DetailPanelLaunchActivity;->finish()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/indexsearch/DetailPanelLaunchActivity;->overridePendingTransition(II)V

    return-void
.end method
