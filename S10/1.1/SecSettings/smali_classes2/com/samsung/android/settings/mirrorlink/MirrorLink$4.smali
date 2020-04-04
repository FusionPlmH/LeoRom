.class Lcom/samsung/android/settings/mirrorlink/MirrorLink$4;
.super Ljava/lang/Object;
.source "MirrorLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/mirrorlink/MirrorLink;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$4;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$4;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->access$1100(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$4;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->access$1202(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$4;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->access$1300(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
