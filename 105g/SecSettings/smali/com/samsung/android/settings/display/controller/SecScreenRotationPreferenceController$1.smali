.class Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController$1;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "SecScreenRotationPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;->access$000(Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;->updatePreference(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
