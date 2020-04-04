.class Lcom/samsung/android/settings/GlobalRoamingSettings$4;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/samsung/android/settings/GlobalRoamingSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->access$100(Lcom/samsung/android/settings/GlobalRoamingSettings;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->access$000(Lcom/samsung/android/settings/GlobalRoamingSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->access$000(Lcom/samsung/android/settings/GlobalRoamingSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->access$100(Lcom/samsung/android/settings/GlobalRoamingSettings;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object v0

    const v1, 0x7f120cba

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->access$100(Lcom/samsung/android/settings/GlobalRoamingSettings;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object v0

    const v1, 0x7f120cb9

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void
.end method
