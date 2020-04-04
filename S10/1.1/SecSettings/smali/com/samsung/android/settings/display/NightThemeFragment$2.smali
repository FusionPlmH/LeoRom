.class Lcom/samsung/android/settings/display/NightThemeFragment$2;
.super Ljava/lang/Object;
.source "NightThemeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/NightThemeFragment;->showLocationOnDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/NightThemeFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/NightThemeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/NightThemeFragment$2;->this$0:Lcom/samsung/android/settings/display/NightThemeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment$2;->this$0:Lcom/samsung/android/settings/display/NightThemeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/NightThemeFragment;->access$100(Lcom/samsung/android/settings/display/NightThemeFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme_scheduled_type"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/NightThemeFragment$2;->this$0:Lcom/samsung/android/settings/display/NightThemeFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/NightThemeFragment;->access$200(Lcom/samsung/android/settings/display/NightThemeFragment;)Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->onClick()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/NightThemeFragment$2;->this$0:Lcom/samsung/android/settings/display/NightThemeFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/NightThemeFragment;->access$300(Lcom/samsung/android/settings/display/NightThemeFragment;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "display_night_theme_scheduled"

    invoke-static {v1, v3, v2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v1, p0, Lcom/samsung/android/settings/display/NightThemeFragment$2;->this$0:Lcom/samsung/android/settings/display/NightThemeFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/NightThemeFragment;->access$400(Lcom/samsung/android/settings/display/NightThemeFragment;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
