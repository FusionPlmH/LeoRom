.class Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;
.super Ljava/lang/Object;
.source "PublicVolumeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PublicVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->access$000(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StorageUtils;->checkEncryptionAndUnmount(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Z)V

    return-void
.end method
