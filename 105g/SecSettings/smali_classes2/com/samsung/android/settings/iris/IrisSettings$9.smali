.class Lcom/samsung/android/settings/iris/IrisSettings$9;
.super Ljava/lang/Object;
.source "IrisSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/iris/IrisSettings;->showIrisUnlockTurnOnDialog(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisSettings;

.field final synthetic val$needToRegister:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisSettings;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisSettings$9;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    iput-boolean p2, p0, Lcom/samsung/android/settings/iris/IrisSettings$9;->val$needToRegister:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisSettings$9;->val$needToRegister:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings$9;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    const/16 v1, 0x2c5

    invoke-static {v0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->access$1500(Lcom/samsung/android/settings/iris/IrisSettings;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings$9;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings$9;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/iris/IrisSettings;->access$300(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$9;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->access$700(Lcom/samsung/android/settings/iris/IrisSettings;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->setBiometricIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings$9;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisSettings;->access$1600(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings$9;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisSettings;->access$000(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings$9;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisSettings;->access$400(Lcom/samsung/android/settings/iris/IrisSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
