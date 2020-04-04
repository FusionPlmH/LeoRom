.class Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$11;
.super Ljava/lang/Object;
.source "SecAdaptiveDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$11;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$11;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->access$602(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$11;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->access$600(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$11;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->access$300(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$11;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->access$100(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sec_display_temperature_green"

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$11;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->access$300(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0xb

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method
