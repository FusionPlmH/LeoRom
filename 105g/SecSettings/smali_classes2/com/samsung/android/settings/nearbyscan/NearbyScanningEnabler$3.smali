.class Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;
.super Ljava/lang/Object;
.source "NearbyScanningEnabler.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->access$000(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "NearbyScanningEnabler"

    const-string v2, "OnPreferenceChangeListener, context is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x0

    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "on"

    goto :goto_0

    :cond_1
    const-string v2, "off"

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    const-string v4, "BLEM_100"

    const-string v5, "BLEM_0101"

    invoke-static {v3, v4, v5, v2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->access$300(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    nop

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->access$000(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    if-eqz v0, :cond_5

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->access$000(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->isBeaconManagerInstall(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->access$000(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v3

    const-string v5, "Not Installed BeaconManager"

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->access$000(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v3

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_1
    invoke-static {v3, v4}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->setDBInt(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->access$000(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->settingslogging(Landroid/content/Context;)Z

    :cond_5
    return v1

    :cond_6
    const-string v2, "NearbyScanningEnabler"

    const-string v3, "OnPreferenceChangeListener, instance not Boolean"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
