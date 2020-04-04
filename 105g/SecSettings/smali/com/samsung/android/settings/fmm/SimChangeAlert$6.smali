.class Lcom/samsung/android/settings/fmm/SimChangeAlert$6;
.super Ljava/lang/Object;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/fmm/SimChangeAlert;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$6;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$6;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1184

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TAB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "additional"

    const-string v2, "phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "existingRecipientCount"

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$6;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->access$000(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "maxRecipientCount"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$6;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
