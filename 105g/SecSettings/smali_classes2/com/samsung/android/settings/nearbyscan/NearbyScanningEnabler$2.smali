.class Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;
.super Ljava/lang/Object;
.source "NearbyScanningEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->access$000(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NearbyScanningEnabler"

    const-string v1, "OnSwitchChangeListener, context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->access$000(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/Switch;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    const-string v1, "on"

    goto :goto_0

    :cond_1
    const-string v1, "off"

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    const-string v3, "BLEM_100"

    const-string v4, "BLEM_0101"

    invoke-static {v2, v3, v4, v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->access$300(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    if-eqz p2, :cond_6

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->access$000(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->isBeaconManagerInstall(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    const/4 p2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->access$000(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "Not Installed BeaconManager"

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->access$000(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v1

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-static {v1, v2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->setDBInt(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/widget/Switch;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->access$000(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->settingslogging(Landroid/content/Context;)Z

    :cond_6
    return-void
.end method
