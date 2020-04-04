.class Lcom/samsung/android/settings/lockscreen/AODPreferenceController$4;
.super Ljava/lang/Object;
.source "AODPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->makeAccessibilityDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/AODPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController$4;->this$0:Lcom/samsung/android/settings/lockscreen/AODPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController$4;->this$0:Lcom/samsung/android/settings/lockscreen/AODPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->access$700(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_mode"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController$4;->this$0:Lcom/samsung/android/settings/lockscreen/AODPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->access$100(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    return-void
.end method
