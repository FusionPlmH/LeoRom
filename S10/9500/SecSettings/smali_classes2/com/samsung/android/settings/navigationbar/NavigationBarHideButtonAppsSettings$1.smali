.class Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$1;
.super Landroid/database/ContentObserver;
.source "NavigationBarHideButtonAppsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$000(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$100(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_hide_bar"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$000(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_1
    return-void
.end method
