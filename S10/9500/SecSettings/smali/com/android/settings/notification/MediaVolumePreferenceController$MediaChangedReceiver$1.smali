.class Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver$1;
.super Ljava/lang/Object;
.source "MediaVolumePreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;->register(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver$1;->this$1:Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver$1;->this$1:Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;

    iget-object v0, v0, Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;->this$0:Lcom/android/settings/notification/MediaVolumePreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->access$100(Lcom/android/settings/notification/MediaVolumePreferenceController;)V

    return-void
.end method
