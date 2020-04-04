.class public Lcom/android/settings/SetupWizardUtils;
.super Ljava/lang/Object;
.source "SetupWizardUtils.java"


# static fields
.field static final SYSTEM_PROP_SETUPWIZARD_THEME:Ljava/lang/String; = "setupwizard.theme"


# direct methods
.method public static copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "theme"

    const-string/jumbo v1, "theme"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "useImmersiveMode"

    const-string/jumbo v1, "useImmersiveMode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method public static getTheme(Landroid/content/Intent;)I
    .locals 4

    const-string/jumbo v0, "theme"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "setupwizard.theme"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const v1, 0x7f130118

    if-eqz v0, :cond_2

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "glif_light"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v3, "glif_v3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "glif_v2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v3, "glif"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_4
    const-string v3, "glif_v3_light"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_5
    const-string v3, "glif_v2_light"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const v1, 0x7f130117

    return v1

    :pswitch_1
    return v1

    :pswitch_2
    const v1, 0x7f130119

    return v1

    :pswitch_3
    const v1, 0x7f13011a

    return v1

    :pswitch_4
    const v1, 0x7f13011f

    return v1

    :pswitch_5
    const v1, 0x7f130120

    return v1

    :cond_2
    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_5
        -0x49f8f44f -> :sswitch_4
        0x3074c2 -> :sswitch_3
        0x6e4af19 -> :sswitch_2
        0x6e4af1a -> :sswitch_1
        0x2dc1f359 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTransparentTheme(Landroid/content/Intent;)I
    .locals 3

    invoke-static {p0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result v0

    const v1, 0x7f13011b

    const v2, 0x7f13011f

    if-ne v0, v2, :cond_0

    const v1, 0x7f130122

    goto :goto_0

    :cond_0
    const v2, 0x7f130120

    if-ne v0, v2, :cond_1

    const v1, 0x7f130121

    goto :goto_0

    :cond_1
    const v2, 0x7f130119

    if-ne v0, v2, :cond_2

    const v1, 0x7f13011c

    goto :goto_0

    :cond_2
    const v2, 0x7f130118

    if-ne v0, v2, :cond_3

    const v1, 0x7f1301bf

    goto :goto_0

    :cond_3
    const v2, 0x7f130117

    if-ne v0, v2, :cond_4

    const v1, 0x7f1301c0

    :cond_4
    :goto_0
    return v1
.end method
