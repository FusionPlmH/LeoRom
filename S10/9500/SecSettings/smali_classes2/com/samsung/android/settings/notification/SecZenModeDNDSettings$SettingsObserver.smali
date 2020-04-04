.class final Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SecZenModeDNDSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->access$1000(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "zen_mode"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const-string p1, "zen_mode_config_etag"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->updateScheduleSummary()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->access$1400(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->access$1500(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;ZZ)V

    :cond_1
    return-void
.end method

.method public register()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->access$1100(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->access$1200(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public unregister()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->access$1300(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
