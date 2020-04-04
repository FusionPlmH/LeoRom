.class Lcom/android/settings/security/ScreenPinningPreferenceController$1;
.super Ljava/lang/Object;
.source "ScreenPinningPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/android/settings/security/ScreenPinningPreferenceController$1;->this$0:Lcom/android/settings/security/ScreenPinningPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController$1;->this$0:Lcom/android/settings/security/ScreenPinningPreferenceController;

    invoke-static {v0}, Lcom/android/settings/security/ScreenPinningPreferenceController;->access$000(Lcom/android/settings/security/ScreenPinningPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_to_app_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    iget-object v1, p0, Lcom/android/settings/security/ScreenPinningPreferenceController$1;->this$0:Lcom/android/settings/security/ScreenPinningPreferenceController;

    invoke-static {v1, v0}, Lcom/android/settings/security/ScreenPinningPreferenceController;->access$100(Lcom/android/settings/security/ScreenPinningPreferenceController;Z)V

    return-void
.end method
