.class final Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NightThemeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/NightThemeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final NIGHT_THEME_SCHEDULED_TYPE_URI:Landroid/net/Uri;

.field private final NIGHT_THEME_SCHEDULED_URI:Landroid/net/Uri;

.field private final NIGHT_THEME_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/settings/display/NightThemeFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/NightThemeFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/NightThemeFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "display_night_theme"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;->NIGHT_THEME_URI:Landroid/net/Uri;

    const-string p1, "display_night_theme_scheduled"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;->NIGHT_THEME_SCHEDULED_URI:Landroid/net/Uri;

    const-string p1, "display_night_theme_scheduled_type"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;->NIGHT_THEME_SCHEDULED_TYPE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;->NIGHT_THEME_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/NightThemeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/NightThemeFragment;->access$900(Lcom/samsung/android/settings/display/NightThemeFragment;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/NightThemeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/NightThemeFragment;->access$000(Lcom/samsung/android/settings/display/NightThemeFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "display_night_theme"

    invoke-static {v0, v3, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/NightThemeFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/NightThemeFragment;->access$900(Lcom/samsung/android/settings/display/NightThemeFragment;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;->NIGHT_THEME_SCHEDULED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/NightThemeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/NightThemeFragment;->access$400(Lcom/samsung/android/settings/display/NightThemeFragment;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/NightThemeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/NightThemeFragment;->access$1000(Lcom/samsung/android/settings/display/NightThemeFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "display_night_theme_scheduled"

    invoke-static {v0, v3, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    move v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/NightThemeFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/NightThemeFragment;->access$400(Lcom/samsung/android/settings/display/NightThemeFragment;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/NightThemeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/NightThemeFragment;->access$1100(Lcom/samsung/android/settings/display/NightThemeFragment;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;->NIGHT_THEME_SCHEDULED_TYPE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/NightThemeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/NightThemeFragment;->access$1100(Lcom/samsung/android/settings/display/NightThemeFragment;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setListening(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/NightThemeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/NightThemeFragment;->access$1200(Lcom/samsung/android/settings/display/NightThemeFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;->NIGHT_THEME_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;->NIGHT_THEME_SCHEDULED_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;->NIGHT_THEME_SCHEDULED_TYPE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
