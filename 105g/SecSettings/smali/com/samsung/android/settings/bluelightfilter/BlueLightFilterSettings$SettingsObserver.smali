.class final Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BlueLightFilterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;

.field private final BLUE_LIGHT_FILTER_SCHEDULED_URI:Landroid/net/Uri;

.field private final BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

.field private final BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "blue_light_filter"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

    const-string p1, "blue_light_filter_opacity"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;

    const-string p1, "blue_light_filter_scheduled"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_SCHEDULED_URI:Landroid/net/Uri;

    const-string p1, "blue_light_filter_type"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->access$900(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->access$1000(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->access$900(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->access$1100(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blue_light_filter"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->access$1000(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->access$900(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->access$1000(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->access$1200(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "blue_light_filter_opacity"

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setProgress(I)V

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_SCHEDULED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->access$1300(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "blue_light_filter_type"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->access$1400(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blue_light_filter_scheduled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->access$300(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->access$300(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    const/16 v3, 0x12c

    invoke-static {v2, v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->access$1500(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;I)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->access$1600(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "blue_light_filter_type"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->access$600(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->access$600(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v4

    if-ne v0, v3, :cond_6

    move v3, v1

    goto :goto_2

    :cond_6
    move v3, v2

    :goto_2
    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->access$100(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->access$100(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v3

    if-ne v0, v1, :cond_8

    goto :goto_3

    :cond_8
    move v1, v2

    :goto_3
    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    :cond_9
    :goto_4
    return-void
.end method

.method public setListening(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->access$1700(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_SCHEDULED_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
