.class Lcom/samsung/android/settings/SecCmcModeEnabler$3;
.super Landroid/database/ContentObserver;
.source "SecCmcModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SecCmcModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SecCmcModeEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SecCmcModeEnabler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SecCmcModeEnabler$3;->this$0:Lcom/samsung/android/settings/SecCmcModeEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/SecCmcModeEnabler$3;->this$0:Lcom/samsung/android/settings/SecCmcModeEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/SecCmcModeEnabler;->access$000(Lcom/samsung/android/settings/SecCmcModeEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cmc_activation_intermediate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Mdec"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings: mCMCActivationIntermediateObserver: selfChange = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isProgressDisplayed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/SecCmcModeEnabler$3;->this$0:Lcom/samsung/android/settings/SecCmcModeEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/SecCmcModeEnabler;->access$100(Lcom/samsung/android/settings/SecCmcModeEnabler;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/SecCmcModeEnabler$3;->this$0:Lcom/samsung/android/settings/SecCmcModeEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/SecCmcModeEnabler;->access$000(Lcom/samsung/android/settings/SecCmcModeEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/ConnectionsUtils;->isCmcModeOn(Landroid/content/Context;)Z

    move-result v4

    xor-int/2addr v1, v4

    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/SecCmcModeEnabler$3;->this$0:Lcom/samsung/android/settings/SecCmcModeEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/SecCmcModeEnabler;->access$200(Lcom/samsung/android/settings/SecCmcModeEnabler;)V

    iget-object v1, p0, Lcom/samsung/android/settings/SecCmcModeEnabler$3;->this$0:Lcom/samsung/android/settings/SecCmcModeEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/SecCmcModeEnabler;->access$100(Lcom/samsung/android/settings/SecCmcModeEnabler;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/SecCmcModeEnabler$3;->this$0:Lcom/samsung/android/settings/SecCmcModeEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/SecCmcModeEnabler;->access$100(Lcom/samsung/android/settings/SecCmcModeEnabler;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/SecCmcModeEnabler$3;->this$0:Lcom/samsung/android/settings/SecCmcModeEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/SecCmcModeEnabler;->access$000(Lcom/samsung/android/settings/SecCmcModeEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/ConnectionsUtils;->isCmcModeOn(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/SecCmcModeEnabler$3;->this$0:Lcom/samsung/android/settings/SecCmcModeEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/SecCmcModeEnabler;->access$200(Lcom/samsung/android/settings/SecCmcModeEnabler;)V

    iget-object v2, p0, Lcom/samsung/android/settings/SecCmcModeEnabler$3;->this$0:Lcom/samsung/android/settings/SecCmcModeEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/SecCmcModeEnabler;->access$100(Lcom/samsung/android/settings/SecCmcModeEnabler;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    :goto_1
    return-void
.end method
