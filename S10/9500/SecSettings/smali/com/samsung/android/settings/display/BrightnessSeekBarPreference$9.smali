.class Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$9;
.super Ljava/lang/Object;
.source "BrightnessSeekBarPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->showBrightnessAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$9;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$9;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->access$902(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$9;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->access$1000(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shown_max_brightness_dialog"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->access$602(Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$9;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->access$1100(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$9;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->access$1200(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v1, v0

    const-wide v3, 0x4056800000000000L    # 90.0

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const-string v2, "BrightnessSeekBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPositiveButton >> limit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$9;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->access$1300(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;I)V

    return-void
.end method
