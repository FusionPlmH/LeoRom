.class Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;
.super Landroid/database/ContentObserver;
.source "NavigationBarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->access$000(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_force_touch_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->access$100(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->access$100(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string v3, ""

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->access$200(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "navigationbar_pressure_user_level"

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    const v6, 0x7f120f11

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->access$300(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    const v6, 0x7f120f1d

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->access$300(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    const v5, 0x7f120f10

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->access$300(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    const v6, 0x7f120f1c

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->access$300(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    move-object v1, v2

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->access$100(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
