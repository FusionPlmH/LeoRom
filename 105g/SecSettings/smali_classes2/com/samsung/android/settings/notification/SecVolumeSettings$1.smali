.class Lcom/samsung/android/settings/notification/SecVolumeSettings$1;
.super Landroid/database/ContentObserver;
.source "SecVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecVolumeSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->access$100(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->access$200(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/samsung/android/settings/notification/SecDNDStatusPreferenceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecDNDStatusPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->access$200(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/samsung/android/settings/notification/SecDNDStatusPreferenceController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->access$200(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/samsung/android/settings/notification/SecDNDStatusPreferenceController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/SecDNDStatusPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecDNDStatusPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    :cond_1
    return-void
.end method
