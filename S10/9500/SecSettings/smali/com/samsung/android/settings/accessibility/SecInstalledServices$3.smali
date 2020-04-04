.class Lcom/samsung/android/settings/accessibility/SecInstalledServices$3;
.super Lcom/android/settings/accessibility/SettingsContentObserver;
.source "SecInstalledServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/SecInstalledServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/SecInstalledServices;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/SecInstalledServices;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/SecInstalledServices$3;->this$0:Lcom/samsung/android/settings/accessibility/SecInstalledServices;

    invoke-direct {p0, p2}, Lcom/android/settings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/SecInstalledServices$3;->this$0:Lcom/samsung/android/settings/accessibility/SecInstalledServices;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->updateServicePreferences()V

    return-void
.end method
