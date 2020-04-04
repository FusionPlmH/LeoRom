.class final Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NightThemePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final NIGHT_THEME_SCHEDULED_TYPE_URI:Landroid/net/Uri;

.field private final NIGHT_THEME_SCHEDULED_URI:Landroid/net/Uri;

.field private final NIGHT_THEME_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "display_night_theme"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;->NIGHT_THEME_URI:Landroid/net/Uri;

    const-string p1, "display_night_theme_scheduled"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;->NIGHT_THEME_SCHEDULED_URI:Landroid/net/Uri;

    const-string p1, "display_night_theme_scheduled_type"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;->NIGHT_THEME_SCHEDULED_TYPE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->updatePreference(Landroid/net/Uri;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;

    iget-object v0, v0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;->NIGHT_THEME_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;

    iget-object v0, v0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;->NIGHT_THEME_SCHEDULED_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;

    iget-object v0, v0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;->NIGHT_THEME_SCHEDULED_TYPE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;

    iget-object v0, v0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
