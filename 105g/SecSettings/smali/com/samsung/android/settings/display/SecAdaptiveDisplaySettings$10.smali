.class Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$10;
.super Ljava/lang/Object;
.source "SecAdaptiveDisplaySettings.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$10;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$10;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->access$500(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$10;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->access$500(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$10;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->access$100(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sec_display_temperature_red"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0xb

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$10;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->access$502(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$10;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->access$100(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080605

    const v2, 0x7f0704fd

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setSeekBarThumb(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$10;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->access$502(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Z)Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, -0xb

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$10;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->access$100(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sec_display_temperature_red"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$10;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->getMetricsCategory()I

    move-result v1

    int-to-long v2, v0

    const/16 v4, 0x1d1b

    invoke-static {v1, v4, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$10;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->access$100(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080605

    const v3, 0x7f0704fe

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setSeekBarThumb(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method