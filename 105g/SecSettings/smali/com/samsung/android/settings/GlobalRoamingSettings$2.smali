.class Lcom/samsung/android/settings/GlobalRoamingSettings$2;
.super Landroid/os/Handler;
.source "GlobalRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/GlobalRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GlobalRoamingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->access$100(Lcom/samsung/android/settings/GlobalRoamingSettings;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object v0

    const v1, 0x7f120cef

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->access$200(Lcom/samsung/android/settings/GlobalRoamingSettings;Z)V

    nop

    :goto_0
    return-void
.end method
