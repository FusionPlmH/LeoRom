.class Lcom/samsung/android/settings/HomeSettings$1;
.super Ljava/lang/Object;
.source "HomeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/HomeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/HomeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/HomeSettings$1;->this$0:Lcom/samsung/android/settings/HomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/HomeSettings$1;->this$0:Lcom/samsung/android/settings/HomeSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/HomeSettings;->access$200(Lcom/samsung/android/settings/HomeSettings;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;

    iget-boolean v2, v1, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->isChecked:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/HomeSettings$1;->this$0:Lcom/samsung/android/settings/HomeSettings;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/HomeSettings;->makeCurrentHome(Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;)V

    iget-object v2, p0, Lcom/samsung/android/settings/HomeSettings$1;->this$0:Lcom/samsung/android/settings/HomeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/HomeSettings;->access$300(Lcom/samsung/android/settings/HomeSettings;)Landroid/widget/Toast;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/HomeSettings$1;->this$0:Lcom/samsung/android/settings/HomeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/HomeSettings;->access$300(Lcom/samsung/android/settings/HomeSettings;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/HomeSettings$1;->this$0:Lcom/samsung/android/settings/HomeSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/HomeSettings$1;->this$0:Lcom/samsung/android/settings/HomeSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f121490

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/HomeSettings;->access$302(Lcom/samsung/android/settings/HomeSettings;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v2, p0, Lcom/samsung/android/settings/HomeSettings$1;->this$0:Lcom/samsung/android/settings/HomeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/HomeSettings;->access$300(Lcom/samsung/android/settings/HomeSettings;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method
