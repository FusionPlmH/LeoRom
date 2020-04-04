.class Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;
.super Ljava/lang/Object;
.source "ResetSettingsConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/general/ResetSettingsConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-static {v0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->access$300(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-virtual {v0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->getMetricsCategory()I

    move-result v0

    const/16 v3, 0x123b

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-virtual {v0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->getMetricsCategory()I

    move-result v0

    const/16 v3, 0x1236

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-static {v0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->access$400(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V

    return-void
.end method
