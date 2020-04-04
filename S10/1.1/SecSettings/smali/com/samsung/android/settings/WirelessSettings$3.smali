.class Lcom/samsung/android/settings/WirelessSettings$3;
.super Landroid/database/ContentObserver;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/WirelessSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/WirelessSettings$3;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings$3;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/WirelessSettings;->access$200(Lcom/samsung/android/settings/WirelessSettings;)Lcom/android/settings/network/PrivateDnsModeDialogPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings$3;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/WirelessSettings;->getPrivateModeDnsSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
