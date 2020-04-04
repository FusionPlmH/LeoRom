.class public Lcom/samsung/android/settings/bixby/actions/FullScreenAppsAction;
.super Ljava/lang/Object;
.source "FullScreenAppsAction.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/actions/FullScreenAppsAction;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doGetAction()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFullScreenApps()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "on"

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/actions/FullScreenAppsAction;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->supportDisplayCutOut(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/actions/FullScreenAppsAction;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_cutout_hide_notch"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "on"

    goto :goto_0

    :cond_0
    const-string v0, "not_supported_device"

    :cond_1
    :goto_0
    return-object v0
.end method
