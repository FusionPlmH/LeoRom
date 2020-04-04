.class Lcom/samsung/android/settings/lockscreen/LockScreenSettings$3;
.super Ljava/lang/Object;
.source "LockScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->showSmartLockDialog(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

.field final synthetic val$checkboxView:Landroid/widget/CheckBox;

.field final synthetic val$localIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockScreenSettings;Landroid/widget/CheckBox;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$3;->val$checkboxView:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$3;->val$localIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$3;->val$checkboxView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "lock_screen_menu_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "smart_lock_show_dialog"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$3;->val$localIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$3;->val$localIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
