.class Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;
.super Ljava/lang/Object;
.source "ScreenResolutionSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecMultiButtonPreference$OnButtonSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/ScreenResolutionSettings;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonSelected(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;I)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->access$000(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->getSelectedPosition()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->access$200(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->access$102(Lcom/samsung/android/settings/display/ScreenResolutionSettings;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->access$300(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/widget/ButtonPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->access$100(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setEnabled(Z)V

    const/16 v0, 0x1d13

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getMetricsCategory()I

    move-result v1

    const-wide/16 v4, 0x1

    invoke-static {v1, v0, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_1

    :cond_1
    if-ne p2, v3, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getMetricsCategory()I

    move-result v1

    const-wide/16 v4, 0x2

    invoke-static {v1, v0, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getMetricsCategory()I

    move-result v1

    const-wide/16 v4, 0x3

    invoke-static {v1, v0, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_3
    :goto_1
    return v3
.end method
