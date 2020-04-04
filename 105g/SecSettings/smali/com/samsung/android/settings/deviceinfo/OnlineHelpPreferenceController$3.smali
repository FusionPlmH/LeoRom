.class Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController$3;
.super Ljava/lang/Object;
.source "OnlineHelpPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->showOnlineHelpDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;

.field final synthetic val$checkboxView:Landroid/widget/CheckBox;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController$3;->this$0:Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;

    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController$3;->val$checkboxView:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController$3;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController$3;->val$checkboxView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController$3;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "onlinehelp_show_dialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController$3;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController$3;->this$0:Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->access$100(Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController$3;->this$0:Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->access$000(Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OnlineHelpPreferenceController"

    const-string v2, "Activity Not Found"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
