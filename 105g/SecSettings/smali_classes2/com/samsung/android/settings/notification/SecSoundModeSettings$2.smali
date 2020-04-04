.class Lcom/samsung/android/settings/notification/SecSoundModeSettings$2;
.super Landroid/database/ContentObserver;
.source "SecSoundModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecSoundModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecSoundModeSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$100(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->access$000(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)V

    :cond_1
    return-void
.end method
