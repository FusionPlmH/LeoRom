.class Lcom/samsung/android/settings/ethernet/EthernetEnabler$2;
.super Ljava/lang/Object;
.source "EthernetEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ethernet/EthernetEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$2;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$2;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->access$100(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)Landroid/net/EthernetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/EthernetManager;->isEthConnected()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$2;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->access$000(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    if-eqz v0, :cond_0

    const v2, 0x7f121199

    goto :goto_0

    :cond_0
    const v2, 0x7f121480

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$2;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->access$000(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$2;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->access$000(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    return-void
.end method
