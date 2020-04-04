.class Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback$4;
.super Ljava/lang/Object;
.source "SecVolumeLimiterSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->showCheckPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback$4;->this$1:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback$4;->this$1:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$302(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback$4;->this$1:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$100(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback$4;->this$1:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$500(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback$4;->this$1:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$102(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback$4;->this$1:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$1200(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback$4;->this$1:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$1300(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback$4;->this$1:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$1202(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
