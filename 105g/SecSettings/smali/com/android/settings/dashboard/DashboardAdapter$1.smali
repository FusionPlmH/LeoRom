.class Lcom/android/settings/dashboard/DashboardAdapter$1;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardAdapter;->access$000(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->semIsResumed()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "wallpapers_themes_settings"

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x23

    const/16 v2, 0x1d4c

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardAdapter;->access$100(Lcom/android/settings/dashboard/DashboardAdapter;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardAdapter;->access$000(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/Tile;

    invoke-interface {v1, v2, v3}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->openTileIntent(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)V

    return-void
.end method
