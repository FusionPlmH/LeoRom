.class public Lcom/samsung/android/settings/deviceinfo/status/SecSimStatusPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractSimStatusImeiInfoPreferenceController;
.source "SecSimStatusPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/deviceinfo/AbstractSimStatusImeiInfoPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "sim_status"

    return-object v0
.end method
