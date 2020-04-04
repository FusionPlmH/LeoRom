.class Lcom/android/internal/widget/NotificationTemplateView$1;
.super Ljava/lang/Object;
.source "NotificationTemplateView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/NotificationTemplateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/NotificationTemplateView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/NotificationTemplateView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/NotificationTemplateView$1;->this$0:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView$1;->this$0:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-static {v0}, Lcom/android/internal/widget/NotificationTemplateView;->access$000(Lcom/android/internal/widget/NotificationTemplateView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_text_color_inversion"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView$1;->this$0:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-static {v1, v0}, Lcom/android/internal/widget/NotificationTemplateView;->access$102(Lcom/android/internal/widget/NotificationTemplateView;Z)Z

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView$1;->this$0:Lcom/android/internal/widget/NotificationTemplateView;

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView$1;->this$0:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-static {v2}, Lcom/android/internal/widget/NotificationTemplateView;->access$200(Lcom/android/internal/widget/NotificationTemplateView;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/widget/NotificationTemplateView;->access$300(Lcom/android/internal/widget/NotificationTemplateView;F)V

    return-void
.end method
