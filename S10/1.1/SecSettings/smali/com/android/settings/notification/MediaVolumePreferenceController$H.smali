.class final Lcom/android/settings/notification/MediaVolumePreferenceController$H;
.super Landroid/os/Handler;
.source "MediaVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/MediaVolumePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/MediaVolumePreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/MediaVolumePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/MediaVolumePreferenceController$H;->this$0:Lcom/android/settings/notification/MediaVolumePreferenceController;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/MediaVolumePreferenceController;Lcom/android/settings/notification/MediaVolumePreferenceController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/MediaVolumePreferenceController$H;-><init>(Lcom/android/settings/notification/MediaVolumePreferenceController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/MediaVolumePreferenceController$H;->this$0:Lcom/android/settings/notification/MediaVolumePreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->access$100(Lcom/android/settings/notification/MediaVolumePreferenceController;)V

    :goto_0
    return-void
.end method
