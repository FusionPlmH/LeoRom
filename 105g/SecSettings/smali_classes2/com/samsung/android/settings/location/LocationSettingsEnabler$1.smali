.class Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;
.super Landroid/database/ContentObserver;
.source "LocationSettingsEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/location/LocationSettingsEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->access$000(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v1, v2

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->access$100(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->access$100(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->access$200(Lcom/samsung/android/settings/location/LocationSettingsEnabler;I)V

    :cond_1
    return-void
.end method
