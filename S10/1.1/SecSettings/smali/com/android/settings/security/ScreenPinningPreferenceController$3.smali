.class Lcom/android/settings/security/ScreenPinningPreferenceController$3;
.super Ljava/lang/Object;
.source "ScreenPinningPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/security/ScreenPinningPreferenceController;->screenPinningDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/ScreenPinningPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/security/ScreenPinningPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/security/ScreenPinningPreferenceController$3;->this$0:Lcom/android/settings/security/ScreenPinningPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportExclusiveTaskManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController$3;->this$0:Lcom/android/settings/security/ScreenPinningPreferenceController;

    invoke-static {v0}, Lcom/android/settings/security/ScreenPinningPreferenceController;->access$200(Lcom/android/settings/security/ScreenPinningPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController$3;->this$0:Lcom/android/settings/security/ScreenPinningPreferenceController;

    invoke-static {v0}, Lcom/android/settings/security/ScreenPinningPreferenceController;->access$300(Lcom/android/settings/security/ScreenPinningPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController$3;->this$0:Lcom/android/settings/security/ScreenPinningPreferenceController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/security/ScreenPinningPreferenceController;->access$100(Lcom/android/settings/security/ScreenPinningPreferenceController;Z)V

    return-void
.end method
